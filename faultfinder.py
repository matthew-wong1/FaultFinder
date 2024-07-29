import csv
import sys
from collections import defaultdict
from pathlib import Path

# Deduplication (store as CSV?)

# Differential testing
# Settings about how to compare eg between deno on diff platforms or between wgpu and dawn

# output to report:
# Files to manually check, their path, what the error was (differential or some other error eg "Detected Asan error or something")


# Should first load the seen_errors.log into a set. Then continuously update both the set and append to the file
# For generated error report, should first hav a dictionary with error type as key, then list of files
SEEN_ERRORS_PATH = "D:/final_proj/FaultFinder/seen_errors.log"
REPORT_PATH = "D:/final_proj/FaultFinder/reports.log"


def update_seen_errors(line_to_compare, seen_errors):
    if line_to_compare in seen_errors:
        return True

    seen_errors.add(line_to_compare)

    with open(SEEN_ERRORS_PATH, "a") as seen_errors_file:
        seen_errors_file.write(line_to_compare + "\n")

    return False


def update_report(error_file_path, error_type, output_report, seen_before):
    if seen_before:
        report_to_update = output_report[1]
    else:
        report_to_update = output_report[0]

    report_to_update[error_type].append(str(error_file_path))


def parse_report_folder_for_errors(report_folder_to_check, seen_errors, output_report):
    path = Path(report_folder_to_check)

    if not path.exists():
        print("Error: the provided path does not exist")
        return
    
    if not path.is_dir():
        print("Error: The provided path is not a directory: " + report_folder_to_check)
        return
    
    for file_path in path.iterdir():
        if not file_path.is_file():
            continue

        parse_file(file_path, seen_errors, output_report)

    return


def parse_file(file_path, seen_errors, output_report):
    lines_of_interest = defaultdict(list)
    errors_enabled = False
    with open(file_path, 'r') as file:
        # Go through each line. If line contains error:
        lines = file.readlines()
        check_next_file = False
        error_type = None

        for i, line in enumerate(lines):
            line_to_check = line.lower()
            # if line_to_check.strip() != "warning: getproperties is deprecated, use getinfo instead.":
            #     print(line_to_check)
            line_to_compare = None

            if "Errors enabled" in line_to_check:
                errors_enabled = True
                continue
            # Storing any validation errors
            elif "::" in line_to_check or ("[" in line_to_check and "]" in line_to_check):
                error_type = "Validation error"
                line_to_compare = line_to_check
            elif "sanitizer" in line_to_check:
                substring_to_check_for = None
                if "leak" in line_to_check:
                    # Leak San: Find #0 line.
                    substring_to_check_for = "#0"
                    error_type = "LeakSan"
                else:
                    # For ASan and UBSan, check Summary line
                    substring_to_check_for = "summary"
                    if "address" in line_to_check:
                        error_type = "ASan"
                    elif "undefined" in line_to_check:
                        error_type = "UBSan"
                    else:
                        error_type = "Sanitizer"

                for line in lines:
                    if substring_to_check_for in line.lower():
                        line_to_compare = line.lower()

                check_next_file = True

            elif "aborted" in line_to_check:
                # If find aborted. , check the line right before to see if it is in csv
                line_to_compare = lines[i - 1].lower()
                check_next_file = True

                error_type = "Program abortion"

            elif "fatal" in line_to_check or "assertion" in line_to_check:
                # Fatal error - get the fatal error line. and end.
                line_to_compare = line_to_check
                check_next_file = True

                if "fatal" in line_to_check:
                    error_type = "Fatal error"
                else:
                    error_type = "Assertion failure"
            elif "error" in line_to_check or "failed" in line_to_check:
                line_to_compare = line_to_check
                error_type = "Unexpected error/failure"
            elif "has output" in line_to_check:
                lines_of_interest["output"].append(line_to_check)
                continue
            elif "Exit code" in line_to_check:
                if "124" in line_to_check:
                    error_type = "Timeout"
                    line_to_compare = "timeout"
                elif ("1" in line_to_check) and not lines_of_interest:
                    error_type = "Unexpected error/failure"
                    line_to_compare = line_to_check
            else:
                continue


            seen_before = update_seen_errors(line_to_compare, seen_errors)

            # Finally Append file and type of error to report eg ASAN error (5): List of reports
            update_report(file_path, error_type, output_report, seen_before)

            # update lines of interest dictionary
            lines_of_interest[error_type].append(line_to_compare)

            if check_next_file:
                break

    # als one where it knows if errors were generated (check for timeout with error code)
    if not errors_enabled and lines_of_interest:
        output_report[1]["Errors present when disabled"].append(str(file_path))

    return lines_of_interest

def get_seen_errors_as_set():
    seen_errors = set()
    with open(SEEN_ERRORS_PATH, "r") as file:
        for line in file.readlines():
            seen_errors.add(line.lower())

    return seen_errors


def write_output_report(output_report):
    with open(REPORT_PATH, 'w') as file:

        for report_num, report in enumerate(output_report):
            if report_num == 0:
                file.write("Unseen errors:")
            else:
                file.write("Seen errors:")

            for error_type, affected_files in report.items():
                num_affected_files = str(len(affected_files))
                csv_of_affected_files = ", ".join(affected_files)
                file.write("\n" + error_type + "(" + num_affected_files + "): \n")
                file.write(csv_of_affected_files+"\n")

            file.write("\n============================\n")


def differentially_compare_reports(report_folder_to_check, report_folder_to_compare, output_report):
    # different design - loop over all files in folder a), then check if other exists in folder b.
    # then have the parsing reutrn a list of the errors or maybe a map. Of type of error - then list string of errors in that category

    # 4) Loop over all lines in file
    # 5) If contains substr error... see if error exists in the other file
    # 6) If contains substr comptue output: see if is exactly the same
    pass

def parse_reports(report_folder_to_check, report_folder_to_compare, seen_errors, output_report):
    # Parse each report individually for errors  
    # parse_report_for_errors(report_folder_to_check, seen_errors, output_report)
    # parse_report_for_errors(report_folder_to_compare, seen_errors, output_report)

    # 1) loop over all files in report_folder_to_check
    path = Path(report_folder_to_check)

    if not path.exists():
        print("Error: the provided path does not exist")
        return

    if not path.is_dir():
        print("Error: The provided path is not a directory: " + report_folder_to_check)
        return

    for file_path in path.iterdir():
        if not file_path.is_file():
            print(str(file_path) + " skipped because it is not a file")
            continue

        file_to_compare = report_folder_to_compare + file_path.name

        # 2) See if there is an equivalently named file in report_folder_to_compare. If not say x was not compared to anything as missing equiavlent file
        if not file_to_compare.isfile():
            print(str(file_path) + " skipped because it does not have an equivalent file to compare to")
            continue

        # 3 Extract lines of both report files into a list
        report_a_output = parse_file(file_path, seen_errors, output_report)
        report_b_output = parse_file(file_to_compare, seen_errors, output_report)

        # Compare differentially line by line
        differentially_compare_reports(report_a_output, report_b_output, output_report)

    return


def main():
    num_args = len(sys.argv)

    if 1 < num_args < 4: # 1 and 4 because python counts the command itself as an argument
        report_folder_to_check = sys.argv[1]

        seen_errors = get_seen_errors_as_set()
        # 0 contains unseen errors, 1 contains seen errors
        output_report = [defaultdict(list), defaultdict(list)]

        if num_args == 3:
            report_folder_to_compare = sys.argv[2]
            parse_reports(report_folder_to_check, report_folder_to_compare, seen_errors, output_report)
        else:
            parse_report_folder_for_errors(report_folder_to_check, seen_errors, output_report)

        write_output_report(output_report)
    else:
        print("Usage: faultfinder.py <report_folder_to_check> <report_folder_to_compare (optional)>")


if __name__ == "__main__":
    main()