// {"0:0":[129,163,40,114,210,174,78,96,144,149,121,100,119,48,53,203,248,102,59,228,91,55,28,0,208,56,115,233,202,36,113,51,55,86,110,48,33,40,64,6,182,210,120,70,169,242,221,85]}
// Seed: 11431600568741026563

struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<f32>(953.0, -1029.0), Struct_1(true, -748.0), vec3<f32>(164.0, -487.0, 1613.0), vec4<bool>(false, true, false, true)), Struct_2(vec2<f32>(-1332.0, 152.0), Struct_1(false, 977.0), vec3<f32>(632.0, 605.0, 528.0), vec4<bool>(false, false, false, true)), Struct_2(vec2<f32>(1142.0, -1228.0), Struct_1(true, -1000.0), vec3<f32>(-1036.0, 1365.0, -916.0), vec4<bool>(false, true, true, false)), Struct_2(vec2<f32>(-2317.0, 782.0), Struct_1(true, 575.0), vec3<f32>(-523.0, -545.0, 323.0), vec4<bool>(true, true, true, true)), Struct_2(vec2<f32>(356.0, -1884.0), Struct_1(true, 297.0), vec3<f32>(901.0, 318.0, 325.0), vec4<bool>(true, false, false, false)), Struct_2(vec2<f32>(-643.0, -169.0), Struct_1(false, 644.0), vec3<f32>(294.0, 504.0, 1000.0), vec4<bool>(false, false, false, true)), Struct_2(vec2<f32>(1000.0, 637.0), Struct_1(true, -180.0), vec3<f32>(-450.0, 1073.0, 1453.0), vec4<bool>(true, false, false, true)), Struct_2(vec2<f32>(1058.0, -668.0), Struct_1(false, -1510.0), vec3<f32>(-590.0, -699.0, 256.0), vec4<bool>(true, true, true, false)), Struct_2(vec2<f32>(-1242.0, -542.0), Struct_1(false, -965.0), vec3<f32>(-1000.0, 892.0, -2279.0), vec4<bool>(false, false, false, true)), Struct_2(vec2<f32>(1087.0, 1640.0), Struct_1(true, -2329.0), vec3<f32>(-937.0, 1070.0, 152.0), vec4<bool>(false, false, false, true)));

var<private> global1: i32 = -17766;

var<private> LOOP_COUNTERS: array<u32, 23>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn func_6() -> bool {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global1 = select(_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 2147483647, u_input.b.x)), ~(~vec4<i32>(-27362, u_input.a, 8173, u_input.d.x))), ~u_input.a, true | !false);
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            break;
        }
        let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(140.0, _wgslsmith_f_op_f32(-108.0 - -338.0))), -485.0, -151.0))));
    }
    if (select(false, false, true)) {
        let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-799.0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-158.0 - -285.0), _wgslsmith_f_op_f32(f32(-1.0) * -850.0)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1183.0), _wgslsmith_f_op_f32(-440.0 * 862.0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-730.0))))), Struct_1(_wgslsmith_add_i32(2147483647, firstLeadingBit(u_input.d.x)) >= 70024, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(800.0)))) * _wgslsmith_f_op_f32(-1000.0 + _wgslsmith_f_op_f32(round(342.0))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(746.0 + -666.0) + _wgslsmith_div_f32(1615.0, 1294.0)), -999.0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000.0, -571.0))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-495.0, 1763.0, 668.0))))), vec4<bool>(false, true, false, false));
        global0 = array<Struct_2, 10>();
    }
    for (; ; ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        if (true & (_wgslsmith_f_op_f32(ceil(490.0)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1000.0)), _wgslsmith_f_op_f32(1000.0 - -941.0))))))) {
            let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(190.0, 360.0, 1084.0))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-769.0, -119.0, 314.0)) - vec3<f32>(_wgslsmith_f_op_f32(692.0 - -1319.0), _wgslsmith_f_op_f32(abs(996.0)), _wgslsmith_f_op_f32(max(-1195.0, -574.0)))))));
            var var_1 = !(!vec2<bool>(true, false));
            global0 = array<Struct_2, 10>();
        }
        break;
    }
    let var_0 = vec4<f32>(-316.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -442.0) - _wgslsmith_f_op_f32(sign(-764.0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1569.0, -696.0)) - _wgslsmith_f_op_f32(-1101.0 - -1000.0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(614.0)), _wgslsmith_f_op_f32(-432.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-716.0) + 231.0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-864.0, -126.0) * _wgslsmith_f_op_f32(f32(-1.0) * -731.0)), any(vec2<bool>(true, true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-686.0) * 218.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-800.0, -577.0)) + _wgslsmith_f_op_f32(step(-717.0, -575.0))))));
    let var_1 = -86539 & ~(~(-32593));
    return any(select(select(!vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), all(vec3<bool>(false, true, true))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false))), vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), 0 == ~var_1, !true), !(_wgslsmith_div_f32(-890.0, var_0.x) <= _wgslsmith_f_op_f32(exp2(var_0.x)))));
}

fn func_5() -> i32 {
    let var_0 = ~u_input.d.x;
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        continue;
    }
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-359.0, 229.0, -705.0) * vec3<f32>(-1049.0, -1116.0, -976.0)))), _wgslsmith_div_vec3_f32(vec3<f32>(674.0, 800.0, -256.0), _wgslsmith_f_op_vec3_f32(vec3<f32>(-374.0, 342.0, -151.0) + vec3<f32>(-2078.0, 2662.0, 2485.0))), (u_input.b.x & u_input.b.x) != _wgslsmith_dot_vec4_i32(u_input.b, u_input.b))) - vec3<f32>(-251.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-928.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1147.0 + 202.0), 1106.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-640.0, 476.0), _wgslsmith_f_op_f32(ceil(-1377.0)), _wgslsmith_f_op_f32(1000.0 * -2071.0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-161.0, -1509.0, -1566.0) - vec3<f32>(1476.0, -176.0, -1020.0)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1804.0, 143.0, -200.0), vec3<f32>(658.0, -1125.0, -436.0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2130.0, 1000.0, -731.0)))))));
    if (false) {
        for (var var_2 = 2147483647; ; var_2 -= 1) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_1.xz), Struct_1(all(!(!vec4<bool>(false, false, true, true))), 360.0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(897.0)), -1000.0, _wgslsmith_f_op_f32(1896.0 * var_1.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1022.0, -2732.0, 1365.0))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(var_1.x, -1669.0, 1202.0), vec3<bool>(false, false, true))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-628.0, -1430.0, var_1.x), vec3<f32>(var_1.x, -981.0, var_1.x))))))), vec4<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), true || true, func_6(), true));
            continue;
        }
        var var_2 = Struct_1((_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(9026, -2147483648, -1)), u_input.b.ywx) > u_input.a) | true, _wgslsmith_f_op_f32(-var_1.x));
        if (var_2.a) {
            var var_3 = _wgslsmith_f_op_f32(-var_1.x);
        }
        loop {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            var var_3 = _wgslsmith_f_op_f32(var_2.b - -809.0);
            continue;
        }
        var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(171.0, var_2.b, 144.0)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -448.0, var_2.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1562.0, var_2.b, var_1.x) - vec3<f32>(var_1.x, -140.0, var_1.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000.0)), -117.0, var_2.b))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b - var_2.b))), _wgslsmith_f_op_f32(max(-1758.0, 795.0))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1250.0, var_2.b, 1005.0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, var_1.x, var_1.x))))))));
    }
    switch (_wgslsmith_sub_i32(_wgslsmith_div_i32(var_0, u_input.a), ~_wgslsmith_sub_i32(var_0, var_0))) {
        case 21030: {
            switch (~2147483647) {
                case 12573: {
                    global1 = ~(-17396);
                    global0 = array<Struct_2, 10>();
                    global1 = var_0;
                    let var_2 = Struct_3(!(!vec2<bool>(!true, false)), Struct_1(select(all(!vec2<bool>(true, true)), -902.0 != _wgslsmith_f_op_f32(-var_1.x), !(!false)), _wgslsmith_f_op_f32(-1112.0)), u_input.b, -1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1103.0)) - 1677.0) - 1912.0));
                }
                case -37824: {
                    var var_2 = Struct_3(vec2<bool>(any(vec2<bool>(all(vec2<bool>(false, true)), true)), !func_6()), Struct_1(all(vec4<bool>(func_6(), true, !false, true)), _wgslsmith_f_op_f32(-872.0 + var_1.x)), select(vec4<i32>(reverseBits(~u_input.d.x), u_input.b.x, -1, u_input.a), vec4<i32>(-4724, -var_0, _wgslsmith_add_i32(var_0, var_0) | ~0, var_0), !(!(var_0 != u_input.d.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(u_input.a), max(-18256, 1), ~var_0, var_0) >> (_wgslsmith_div_vec4_u32(vec4<u32>(2986u, u_input.c, 4294967295u, 40782u), reverseBits(vec4<u32>(28480u, 7677u, u_input.c, 1u))) % vec4<u32>(32u)), ~u_input.b), _wgslsmith_f_op_f32(sign(424.0)));
                }
                case -31257: {
                    var var_2 = _wgslsmith_mult_u32(0u, ~abs(u_input.c));
                }
                default: {
                    let var_2 = _wgslsmith_add_vec3_u32(max(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.c, u_input.c, u_input.c)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(0u, 0u, u_input.c))), ~vec3<u32>(~13975u, 0u, u_input.c)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, 0u) >> (vec3<u32>(u_input.c, 4294967295u, 13662u) % vec3<u32>(32u))), ~vec3<u32>(u_input.c, 14886u, u_input.c)) << (select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 39144u, u_input.c), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 4294967295u, u_input.c))), vec3<u32>(u_input.c | u_input.c, u_input.c, 4294967295u), true) % vec3<u32>(32u)));
                    let var_3 = -1488.0;
                    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647, -7711, u_input.a, u_input.b.x), select(u_input.b, vec4<i32>(u_input.d.x, -2147483648, var_0, 1224), false), func_6()), u_input.b), _wgslsmith_add_i32(~(~var_0), -firstLeadingBit(var_0))), abs(u_input.b.xx));
                }
            }
            var var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 554.0))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(572.0)), 1100.0), _wgslsmith_f_op_f32(var_1.x + var_1.x)));
            var var_3 = Struct_1(all(!(!vec2<bool>(true, true))), var_2.x);
            let var_4 = var_1.x;
        }
        case 1: {
        }
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var var_2 = abs((_wgslsmith_div_vec3_i32(-vec3<i32>(-1, var_0, var_0), u_input.b.xzz) & ~vec3<i32>(-2147483648, -1, var_0)) ^ vec3<i32>(-33157, firstTrailingBit(0), min(var_0 >> (u_input.c % 32u), _wgslsmith_mod_i32(-2147483648, var_0))));
                continue;
            }
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                break;
            }
            var var_2 = Struct_3(vec2<bool>(any(vec2<bool>(any(vec4<bool>(false, false, true, false)), false | false)), any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, true, false), false))), Struct_1(!(_wgslsmith_f_op_f32(-var_1.x) < 1695.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1172.0, _wgslsmith_f_op_f32(-2388.0 * var_1.x))))), _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, vec4<i32>(2147483647, u_input.b.x, -var_0, _wgslsmith_mod_i32(countOneBits(22013), -64940))), -u_input.b.x, var_1.x);
        }
        default: {
        }
    }
    return select(firstLeadingBit(-16640 << ((u_input.c >> (select(u_input.c, u_input.c, true) % 32u)) % 32u)), 27534, false);
}

fn func_4() -> vec2<bool> {
    if (all(!vec2<bool>(any(vec4<bool>(false, true, false, false)) != false, !(48632u >= 1u)))) {
        var var_0 = firstLeadingBit(1);
        switch (-2147483648) {
            case -2147483648: {
            }
            case -60191: {
                let var_1 = global0[_wgslsmith_index_u32(u_input.c, 10u)];
                let var_2 = u_input.c;
                let var_3 = 2147483647;
            }
            case 17606: {
                let var_1 = _wgslsmith_mult_i32(~(~func_5()), _wgslsmith_add_i32(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(u_input.d.x, u_input.b.x))), -9847 | _wgslsmith_dot_vec3_i32(u_input.b.xyz, u_input.b.yxx)));
                let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-811.0, -179.0, -218.0) * vec3<f32>(659.0, 360.0, -1841.0)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(271.0, 669.0, 402.0) - vec3<f32>(-1029.0, -351.0, -629.0)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-344.0, -288.0, -1528.0)))))));
                var_0 = _wgslsmith_mult_i32(u_input.b.x, ((_wgslsmith_dot_vec3_i32(vec3<i32>(-19774, -9201, var_1), vec3<i32>(-43522, 1, 0)) >> (u_input.c % 32u)) << (abs(~u_input.c) % 32u)) >> (reverseBits(u_input.c) % 32u));
                let var_3 = var_1;
            }
            default: {
                var var_1 = Struct_1(~u_input.c == ~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -431.0) * _wgslsmith_f_op_f32(f32(-1.0) * -232.0)))));
            }
        }
        global1 = 17568;
        if (!all(select(!vec3<bool>(true, true, false), vec3<bool>(true, any(vec3<bool>(false, true, true)), -1 >= 27201), _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.b.x, 1)) < -2147483648))) {
            global1 = u_input.a;
            var var_1 = 468.0;
        }
        var_0 = -3646;
    }
    global1 = 23419 >> (72440u % 32u);
    if (!true) {
    }
    global0 = array<Struct_2, 10>();
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        if (!(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c ^ u_input.c, u_input.c, reverseBits(u_input.c), _wgslsmith_div_u32(63440u, u_input.c)), vec4<u32>(u_input.c, 29416u, u_input.c, 44019u) >> (select(vec4<u32>(39049u, u_input.c, u_input.c, u_input.c), vec4<u32>(16413u, 4294967295u, 1u, 25858u), false) % vec4<u32>(32u))) > 0u)) {
        }
        let var_0 = Struct_3(vec2<bool>(true, false), Struct_1(!(1000.0 != 287.0) || true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1053.0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-320.0) * _wgslsmith_f_op_f32(-953.0 - 385.0)))), u_input.b, -1, -1434.0);
    }
    return vec2<bool>(false, func_6());
}

fn func_7(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = ~37101u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-440.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587.0))), all(select(!arg_0, !arg_0, !vec2<bool>(true, arg_0.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(598.0, 296.0)) * _wgslsmith_f_op_f32(ceil(-903.0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(871.0 + -633.0)))));
    let var_2 = Struct_1(all(!select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), arg_0.x), select(vec3<bool>(false, arg_0.x, true), vec3<bool>(arg_0.x, true, arg_0.x), true), -340.0 >= -1000.0)), 354.0);
    if (true) {
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        if (!all(select(arg_0, arg_0, !arg_0))) {
            var_1 = _wgslsmith_f_op_f32(trunc(-412.0));
        }
        let var_3 = Struct_3(vec2<bool>(!(var_2.b < 541.0), arg_0.x), Struct_1(var_2.a, _wgslsmith_f_op_f32(max(-251.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.b)) * _wgslsmith_f_op_f32(min(var_2.b, 786.0)))))), _wgslsmith_mod_vec4_i32(~u_input.b << (vec4<u32>(u_input.c | u_input.c, u_input.c, ~u_input.c, 4294967295u >> (22139u % 32u)) % vec4<u32>(32u)), u_input.b), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(i32(-1) * -50381, -1), -_wgslsmith_div_i32(u_input.a, 0) & u_input.d.x), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(509.0)))));
        let var_4 = Struct_1(true, _wgslsmith_f_op_f32(max(1584.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -747.0)))));
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        }
    }
    return Struct_3(!vec2<bool>(arg_0.x, all(func_4())), Struct_1(!var_2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b)))), vec4<i32>(42455, -u_input.d.x, reverseBits(abs(u_input.d.x)), _wgslsmith_mult_i32(-firstTrailingBit(4888), u_input.a)), -_wgslsmith_clamp_i32(_wgslsmith_add_i32(select(2147483647, u_input.a, arg_0.x), countOneBits(u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.d.x, -1, -2147483648), vec4<i32>(1918, 1, 1, u_input.d.x)), -9237), var_2.b);
}

fn func_3(arg_0: f32) -> Struct_3 {
    switch (u_input.a) {
        case 41506: {
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                global1 = -1;
                var var_0 = func_7(select(func_4(), !vec2<bool>(0 != 2147483647, !true), false));
                break;
            }
            let var_0 = false || true;
            var var_1 = Struct_1(all(vec2<bool>(true, u_input.a < -2073)), arg_0);
            for (var var_2 = 1; var_2 > -1; var_2 += 1) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                break;
            }
        }
        default: {
            switch (_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b.wyy | u_input.b.wzz, u_input.b.yzw), ~(-_wgslsmith_add_i32(2147483647, max(-2147483648, u_input.a))))) {
                case -10026: {
                }
                case 13304: {
                    global0 = array<Struct_2, 10>();
                    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1866.0)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(898.0, arg_0), vec2<f32>(-476.0, -1735.0)))), vec2<f32>(-192.0, arg_0), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), !vec2<bool>(false, false), !vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, -551.0))), false && !false)), func_7(func_7(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), !vec2<bool>(false, true))).a).b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1574.0, 202.0, 331.0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2302.0, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(563.0, -178.0, arg_0))))), select(vec4<bool>(func_7(!vec2<bool>(true, false)).a.x, select(!false, !true, func_4().x), true, !(!true)), vec4<bool>(!func_6(), max(-21888, u_input.b.x) < u_input.d.x, select(false, false, false | true), false), !(!vec4<bool>(true, false, true, true))));
                    let var_1 = var_0;
                    global1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0, u_input.d.x), u_input.b.wx) ^ (0 << (1u % 32u))), -_wgslsmith_mod_i32(-8361, u_input.a)), _wgslsmith_div_i32(i32(-1) * -_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-25013, -2147483648, u_input.d.x, u_input.a)), ~22516));
                    let var_2 = Struct_3(!func_4(), var_1.b, vec4<i32>(u_input.d.x | reverseBits(max(u_input.d.x, u_input.a)), ~_wgslsmith_mult_i32(u_input.b.x >> (u_input.c % 32u), 21119), _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(2147483647, u_input.a)) & vec2<i32>(u_input.b.x, 2700), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(u_input.d.x, 28686)), u_input.d, vec2<i32>(-2147483648, u_input.a) | vec2<i32>(u_input.a, u_input.a))), 2147483647), _wgslsmith_clamp_i32(u_input.b.x, 19114, u_input.d.x), 123.0);
                }
                case 1: {
                    let var_0 = u_input.d;
                    var var_1 = min(u_input.c, u_input.c) > firstLeadingBit(23485u);
                    global1 = select(abs(-24369) << ((~_wgslsmith_clamp_u32(1u, 70609u, 71784u) << (select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 31630u, u_input.c), vec3<u32>(u_input.c, 0u, u_input.c)), 14278u << (u_input.c % 32u), u_input.c != 0u) % 32u)) % 32u), func_7(vec2<bool>(true, !(!false))).d, all(func_7(!vec2<bool>(true, false)).a) | (2147483647 == var_0.x));
                    var_1 = func_6();
                }
                case 0: {
                    let var_0 = Struct_3(vec2<bool>(any(select(!vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true))), !true), Struct_1(select(false, !all(vec3<bool>(false, false, true)), !(false && false)), arg_0), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(select(~u_input.b, vec4<i32>(1, 89, 0, -2147483648), vec4<bool>(true, true, false, true)), vec4<i32>(u_input.b.x, u_input.b.x, 22629, max(u_input.a, -34271))), ~(reverseBits(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x)) & reverseBits(u_input.b))), -_wgslsmith_dot_vec2_i32(vec2<i32>(abs(2147483647), -1), u_input.d), _wgslsmith_f_op_f32(arg_0 * 1628.0));
                }
                default: {
                    let var_0 = func_4().x;
                    global0 = array<Struct_2, 10>();
                    var var_1 = global0[_wgslsmith_index_u32(90585u, 10u)];
                    let var_2 = !(!vec3<bool>(func_6() && true, var_0, !(true && false)));
                }
            }
            global1 = _wgslsmith_clamp_i32(u_input.a, func_5(), select(u_input.d.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483648, u_input.a), vec2<i32>(-27891, 33693)), vec2<i32>(-25798, u_input.d.x), ~vec2<i32>(1, -1)), ~vec2<i32>(u_input.b.x, 2147483647)), select(true, true, func_7(vec2<bool>(false, true)).a.x) != false));
        }
    }
    switch (-80368) {
        case 1: {
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                var var_0 = select(select(!(!(!vec3<bool>(false, true, false))), vec3<bool>(!false, false, func_4().x), !vec3<bool>(false, u_input.d.x > 206, any(vec3<bool>(true, true, true)))), !vec3<bool>(_wgslsmith_f_op_f32(ceil(arg_0)) == _wgslsmith_f_op_f32(arg_0 + arg_0), !false != (arg_0 > arg_0), !select(true, true, true)), select(select(select(vec3<bool>(true, false, true), !vec3<bool>(true, true, false), 0 == -2147483648), select(!vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), !vec3<bool>(false, false, true)), !any(vec2<bool>(false, true))), select(select(vec3<bool>(true, false, true), !vec3<bool>(true, true, false), false), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), !(false | true)), !true));
                let var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-725.0 + arg_0)))), -1128.0, _wgslsmith_f_op_f32(-166.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1225.0, arg_0))))));
                let var_2 = u_input.c;
            }
            global0 = array<Struct_2, 10>();
            let var_0 = !(~reverseBits(u_input.c) <= 0u);
            let var_1 = vec3<bool>(select(!(any(vec2<bool>(var_0, false)) | (false & var_0)), true, ((986.0 < arg_0) != any(vec3<bool>(var_0, true, var_0))) == var_0), !false, !(~_wgslsmith_sub_i32(-2147483648, u_input.a) != firstLeadingBit(u_input.d.x)));
        }
        case 22571: {
            for (var var_0 = u_input.b.x & ~u_input.b.x; var_0 == 30438; global0 = array<Struct_2, 10>()) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 - arg_0)) + _wgslsmith_div_f32(-153.0, func_7(vec2<bool>(true, false)).b.b)))));
            }
            global0 = array<Struct_2, 10>();
            for (var var_0: i32; var_0 <= -3970; ) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                continue;
            }
        }
        case -9510: {
            if (~80829u < select(119902u, u_input.c, true)) {
                var var_0 = Struct_1(true | !(!select(true, false, false)), -921.0);
                let var_1 = global0[_wgslsmith_index_u32(~76217u, 10u)];
                global0 = array<Struct_2, 10>();
            }
            global0 = array<Struct_2, 10>();
            switch (func_5()) {
                case -53254: {
                    global0 = array<Struct_2, 10>();
                    var var_0 = -1;
                    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 372.0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1457.0, -465.0))))), Struct_1(!(!func_6()), 412.0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(524.0, -177.0, arg_0))), select(!vec4<bool>(-2146.0 >= 1578.0, func_4().x, true, false), vec4<bool>(all(func_4()), any(vec3<bool>(true, false, true)), u_input.d.x < firstLeadingBit(u_input.a), u_input.b.x < ~u_input.d.x), false));
                }
                case 21384: {
                }
                case 41444: {
                    let var_0 = func_7(!(!func_4()));
                    return Struct_3(vec2<bool>(true, !any(!vec3<bool>(false, var_0.b.a, false))), var_0.b, -u_input.b, 2147483647, -1000.0);
                }
                case 2147483647: {
                    var var_0 = arg_0;
                    var var_1 = global0[_wgslsmith_index_u32(~u_input.c, 10u)];
                    var var_2 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(round(607.0)));
                }
                default: {
                    var var_0 = func_7(select(!vec2<bool>(!true, all(vec4<bool>(false, true, false, false))), func_7(vec2<bool>(false, !true)).a, !(!(!vec2<bool>(true, false)))));
                    let var_1 = max(vec4<i32>(0, u_input.d.x, 1, 46834), vec4<i32>(-min(~u_input.b.x, _wgslsmith_mult_i32(1, 1)), abs(~1), func_5(), abs(_wgslsmith_mult_i32(-8146, var_0.d) | ~2147483647)));
                    var var_2 = vec3<f32>(102.0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(func_7(vec2<bool>(false, var_0.a.x)).e, arg_0), arg_0) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, var_0.b.b)), arg_0, (0u >> (61312u % 32u)) < _wgslsmith_clamp_u32(u_input.c, u_input.c, 23175u)))));
                }
            }
            return func_7(vec2<bool>(false | !(!false), ~(~1) != _wgslsmith_sub_i32(u_input.d.x, _wgslsmith_mult_i32(u_input.b.x, -18411))));
        }
        case -2147483648: {
        }
        default: {
        }
    }
    var var_0 = Struct_3(vec2<bool>(!all(vec3<bool>(false, false, false)), any(select(!vec3<bool>(true, false, false), !vec3<bool>(true, false, false), !false))), func_7(vec2<bool>(reverseBits(u_input.d.x) > -u_input.d.x, !func_4().x)).b, _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(_wgslsmith_div_i32(-17824, ~(-1)), 1, func_5(), -5082)), func_5() ^ u_input.b.x, arg_0);
    let var_1 = !(!select(!(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.b.a)), vec4<bool>(false, var_0.b.a, false != var_0.a.x, var_0.a.x), func_7(!var_0.a).a.x));
    if (!(!false) || !(!true)) {
        for (var var_2 = 3001; -(~_wgslsmith_mult_i32(~var_0.d, ~var_0.c.x)) != _wgslsmith_dot_vec2_i32(vec2<i32>(~(~u_input.b.x), u_input.d.x), var_0.c.xy); var_2 -= 1) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var var_3 = Struct_3(!(!var_1.yy), func_7(var_0.a).b, u_input.b, _wgslsmith_sub_i32(2147483647, -11011), _wgslsmith_f_op_f32(-var_0.e));
            continue;
        }
        var var_2 = var_0.b;
        return Struct_3(vec2<bool>(false, true || false), Struct_1(u_input.a == (~(-38497) | (-1 << (4294967295u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b.b, _wgslsmith_f_op_f32(f32(-1.0) * -258.0))) - 1679.0)), u_input.b, ~0, -1000.0);
    }
    return Struct_3(vec2<bool>(false, true && false), func_7(vec2<bool>(!(!var_0.b.a), (u_input.c & 12355u) < 0u)).b, vec4<i32>(var_0.c.x, (_wgslsmith_clamp_i32(57172, -2147483648, var_0.d) ^ ~(-13198)) | -_wgslsmith_mult_i32(-16616, 1768), u_input.d.x, _wgslsmith_dot_vec3_i32(~(u_input.b.yyy << (vec3<u32>(u_input.c, 58331u, 0u) % vec3<u32>(32u))), abs(var_0.c.wwz))), -2694, -1384.0);
}

fn func_8(arg_0: bool, arg_1: Struct_3) -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-542.0), _wgslsmith_f_op_f32(1410.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1070.0, arg_1.b.b, false)))), _wgslsmith_div_f32(arg_1.e, _wgslsmith_f_op_f32(f32(-1.0) * -898.0)), _wgslsmith_f_op_f32(-421.0)), vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-133.0, _wgslsmith_f_op_f32(-arg_1.b.b))), arg_1.b.b, arg_1.e));
    var var_1 = u_input.c;
    var var_2 = -arg_1.c.x;
    switch (~arg_1.d) {
        case 2147483647: {
            var var_3 = func_7(arg_1.a).b;
            for (var var_4 = -953; var_4 >= 2616; var_4 -= 1) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                var var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -685.0)));
                var var_6 = firstLeadingBit(u_input.b >> (vec4<u32>(_wgslsmith_sub_u32(~0u, abs(u_input.c)), _wgslsmith_div_u32(5549u, select(u_input.c, u_input.c, arg_1.a.x)), ~84184u, ~u_input.c) % vec4<u32>(32u)));
                continue;
            }
            var_3 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_3(_wgslsmith_f_op_f32(select(arg_1.e, var_3.b, arg_0))).e))).b;
        }
        case 1: {
            let var_3 = arg_1.a.x;
            if (!(!any(select(!vec3<bool>(true, var_3, false), select(vec3<bool>(arg_1.a.x, arg_0, true), vec3<bool>(arg_1.b.a, arg_0, arg_0), arg_1.b.a), !vec3<bool>(var_3, false, true))))) {
                var_1 = _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.c, u_input.c), vec2<u32>(~_wgslsmith_div_u32(71034u, 4294967295u), ~_wgslsmith_mod_u32(u_input.c, 905u))), vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 95381u), vec2<u32>(0u, 34775u)), abs(4294967295u)), ~reverseBits(_wgslsmith_add_u32(u_input.c, 4297u))));
                var_0 = vec4<f32>(1491.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + 1000.0)))) - 777.0), _wgslsmith_f_op_f32(max(var_0.x, 454.0)), var_0.x);
                return func_3(func_3(_wgslsmith_f_op_f32(round(arg_1.b.b))).e).a.x;
            }
        }
        case -11442: {
            for (var var_3 = _wgslsmith_dot_vec4_i32(~(~abs(arg_1.c)), select(arg_1.c, arg_1.c, select(vec4<bool>(arg_1.a.x, true, arg_1.b.a, !arg_1.a.x), select(select(vec4<bool>(arg_0, arg_1.a.x, arg_0, arg_0), vec4<bool>(true, arg_1.b.a, true, arg_1.b.a), false), select(vec4<bool>(arg_1.b.a, arg_0, arg_1.a.x, false), vec4<bool>(arg_1.b.a, arg_0, arg_0, arg_0), arg_1.a.x), arg_0), false))); ; var_3 -= 1) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            }
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                global1 = u_input.d.x;
                continue;
            }
            if (arg_0) {
                var var_3 = u_input.b.yzy;
                let var_4 = vec2<u32>(24959u, 0u);
            }
            var var_3 = u_input.b;
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                let var_4 = func_3(-689.0);
                let var_5 = Struct_3(vec2<bool>(!(!false) & (any(var_4.a) || all(vec3<bool>(true, false, arg_0))), true), var_4.b, u_input.b, arg_1.d, -1973.0);
            }
        }
        default: {
            if (!all(!select(!vec3<bool>(arg_0, true, true), !vec3<bool>(true, arg_1.a.x, arg_1.a.x), vec3<bool>(true, arg_0, false)))) {
                var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(select(abs(0u), 0u, arg_0), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(78336u, u_input.c, 0u)), ~vec3<u32>(u_input.c, 20508u, 0u)), ~u_input.c ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u), vec4<u32>(0u, u_input.c, 35308u, u_input.c)), ~1u), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(45427u, 0u, 20080u, 52045u), vec4<u32>(u_input.c, 9097u, 4294967295u, 0u)) % vec4<u32>(32u))), vec4<u32>(4294967295u, u_input.c, 12215u, max(u_input.c << (~4294967295u % 32u), u_input.c | 39918u))), 10u)];
                var var_4 = !select(any(select(vec3<bool>(false, arg_1.b.a, var_3.d.x), !vec3<bool>(false, false, true), vec3<bool>(arg_1.b.a, var_3.b.a, true))), ~(16458u << (u_input.c % 32u)) > ~u_input.c, !false);
                let var_5 = vec3<i32>(func_5(), ~u_input.d.x, _wgslsmith_sub_i32(-(~reverseBits(1)), _wgslsmith_clamp_i32(-1, u_input.b.x ^ (u_input.a >> (28802u % 32u)), arg_1.c.x)));
            }
            var_1 = abs(~(~8273u) | u_input.c) << (~1u % 32u);
            var var_3 = global0[_wgslsmith_index_u32(0u, 10u)];
        }
    }
    var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(6458u, 4294967295u, u_input.c, 0u), vec4<u32>(u_input.c, 0u, 18750u, 35449u) & vec4<u32>(u_input.c, u_input.c, 0u, 0u), u_input.d.x != arg_1.c.x), firstTrailingBit(~(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)))), 22286u);
    return !arg_0;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    for (; !(!(!func_8(!false, func_3(-1560.0)))); ) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
    }
    for (var var_0 = -40362; all(vec4<bool>(!((-1 <= -11441) == (true | true)), u_input.c >= ~u_input.c, false, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))))); global0 = array<Struct_2, 10>()) {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        if (func_3(_wgslsmith_f_op_f32(round(161.0))).a.x) {
        }
    }
    return func_7(!select(vec2<bool>(func_4().x, func_3(arg_0).b.a), select(vec2<bool>(false, false), vec2<bool>(true, false), !false), !(0u <= 6148u))).b;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_3(!vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false)), all(vec2<bool>(true, true))), func_2(_wgslsmith_f_op_f32(-1391.0 - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(727.0, -1052.0)))), u_input.d.x), -(~u_input.b), ~(~(-2147483648)), 611.0);
    global0 = array<Struct_2, 10>();
    var var_1 = func_3(-144.0);
    let var_2 = firstLeadingBit(u_input.b.ywz << ((vec3<u32>(0u, u_input.c, 4294967295u) ^ (vec3<u32>(1917u, 60510u, 16480u) >> (vec3<u32>(4294967295u, 24914u, u_input.c) % vec3<u32>(32u)))) % vec3<u32>(32u))) | func_3(var_1.e).c.www;
    return StorageBuffer(14187, _wgslsmith_f_op_vec4_f32(vec4<f32>(1324.0, var_0.b.b, _wgslsmith_div_f32(220.0, _wgslsmith_f_op_f32(round(var_1.b.b))), var_1.b.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-849.0, var_1.b.b, -2325.0, var_0.b.b))))), _wgslsmith_div_u32(95839u, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -15804;
    var var_0 = -1128.0;
    if (true) {
        var var_1 = !(!vec4<bool>(!(!false), false, true, !(true | true)));
    }
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1225.0) + _wgslsmith_f_op_f32(f32(-1.0) * -788.0));
    var_0 = var_1;
    let x = u_input.a;
    s_output = func_1();
}

