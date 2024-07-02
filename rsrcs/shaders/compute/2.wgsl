// {"0:0":[25,95,240,4,164,102,62,213,82,25,75,240,20,176,182,37,61,184,33,238,118,131,181,235,88,128,71,64,86,223,220,5,226,210,126,133,2,249,238,189,5,146,70,54,14,26,215,63]}
// Seed: 16167511908006203152

struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(67875, 1), vec2<i32>(22735, 2147483647), vec2<i32>(0, 1), vec2<i32>(-2147483648, 1), vec2<i32>(9908, 1), vec2<i32>(28197, 15393), vec2<i32>(0, -51854), vec2<i32>(-1, -1), vec2<i32>(46685, 40493), vec2<i32>(1377, 2147483647), vec2<i32>(2147483647, 1), vec2<i32>(-2147483648, 15096), vec2<i32>(10989, -1), vec2<i32>(0, 1), vec2<i32>(12071, -28065), vec2<i32>(1, -7111), vec2<i32>(1, -2147483648), vec2<i32>(1, 1), vec2<i32>(-39666, 3027), vec2<i32>(-19411, 33578), vec2<i32>(-40780, 58698), vec2<i32>(-68575, 2147483647), vec2<i32>(0, -2147483648), vec2<i32>(335, -8755), vec2<i32>(-47654, 15463), vec2<i32>(-1, 0), vec2<i32>(2147483647, -6120), vec2<i32>(-1, 1));

var<private> LOOP_COUNTERS: array<u32, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn func_5(arg_0: f32) -> u32 {
    var var_0 = 11351u;
    if (!(~(~u_input.c) == u_input.a)) {
        loop {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            continue;
        }
        global0 = array<vec2<i32>, 28>();
    }
    var_0 = _wgslsmith_mod_u32(15585u, u_input.b.x);
    for (var var_1: i32; true; var_1 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        break;
    }
    global0 = array<vec2<i32>, 28>();
    return ~(~(u_input.b.x >> (u_input.c % 32u)));
}

fn func_6(arg_0: u32) -> Struct_1 {
    global0 = array<vec2<i32>, 28>();
    var var_0 = 1;
    if (false | false) {
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var var_1 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2064.0 - 330.0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(599.0, 1258.0) + _wgslsmith_f_op_f32(f32(-1.0) * -635.0))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(724.0 * 1464.0))), -478.0), any(vec2<bool>(!(arg_0 != arg_0), !any(vec2<bool>(true, false)))), all(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)))));
            return Struct_1(vec4<i32>(u_input.d, u_input.d, u_input.d, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(72741u, 28u)]), global0[_wgslsmith_index_u32(94163u & 17537u, 28u)])), _wgslsmith_mod_vec2_u32(u_input.b.yy << (vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wyy, vec3<u32>(u_input.e, 3118u, 0u)), ~u_input.b.x) % vec2<u32>(32u)), select(_wgslsmith_add_vec2_u32(u_input.b.wx & u_input.b.zy, u_input.b.xw), ~(vec2<u32>(arg_0, arg_0) ^ vec2<u32>(21865u, arg_0)), vec2<bool>(var_1.x, any(vec4<bool>(false, true, var_1.x, var_1.x))))));
        }
        var_0 = 2147483647;
        let var_1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(max(-global0[_wgslsmith_index_u32(49245u, 28u)], firstTrailingBit(global0[_wgslsmith_index_u32(arg_0, 28u)])), firstLeadingBit(_wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(110170u, 28u)], global0[_wgslsmith_index_u32(14811u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]))), -15816), u_input.d);
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            continue;
        }
        var_0 = -49784;
    }
    let var_1 = Struct_1(firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(u_input.d, u_input.d, 29272), min(-8709, 38444), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(4294967295u, 28u)], vec2<i32>(7978, 2147483647)), 1 >> (1u % 32u))) | vec4<i32>(u_input.d, -(u_input.d & 22969), -_wgslsmith_mod_i32(2147483647, 0), 30257), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_0, 14863u), firstTrailingBit(4617u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), countOneBits(vec2<u32>(16565u, 0u)))) | ~select(~u_input.b.zz, vec2<u32>(u_input.c, arg_0), select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    var var_2 = var_1;
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> bool {
    for (var var_0 = -45636; arg_1.a != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1953.0)))))); var_0 += 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1049.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1047.0) + _wgslsmith_f_op_f32(f32(-1.0) * -880.0)), arg_0, _wgslsmith_f_op_f32(f32(-1.0) * -189.0)) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(select(arg_1.a, -1215.0, true)), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_0) - vec4<f32>(arg_1.a, -1000.0, arg_0, 519.0)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, -2219.0, arg_0, arg_1.a)))))) * vec4<f32>(arg_1.a, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, _wgslsmith_div_f32(arg_0, 1163.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000.0 - arg_1.a), _wgslsmith_f_op_f32(-1000.0))))));
        for (var var_2 = 2147483647; false; var_2 -= 1) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            var_0 = u_input.d;
            break;
        }
        var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1));
        var_0 = -(i32(-1) * -2147483647);
    }
    for (var var_0 = 14670; var_0 <= 0; var_0 -= 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        var var_0 = func_6(_wgslsmith_add_u32(func_5(_wgslsmith_f_op_f32(-1188.0)), u_input.e) & 4294967295u);
    }
    var var_0 = Struct_3(arg_1.a, -u_input.d);
    global0 = array<vec2<i32>, 28>();
    return all(vec2<bool>(!(any(vec2<bool>(false, true)) & all(vec4<bool>(true, false, true, false))), !(!any(vec3<bool>(false, false, false)))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    if (!arg_2.b) {
        global0 = array<vec2<i32>, 28>();
        global0 = array<vec2<i32>, 28>();
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            break;
        }
    }
    for (var var_0 = -3036; all(vec4<bool>(true & !(!arg_2.b), false | func_4(_wgslsmith_f_op_f32(exp2(arg_0)), Struct_3(-736.0, 24585)), (u_input.c >= 59541u) & any(!vec4<bool>(false, false, false, arg_2.b)), arg_2.b)); global0 = array<vec2<i32>, 28>()) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        var var_1 = vec2<bool>(1367.0 > _wgslsmith_f_op_f32(trunc(arg_0)), false);
        continue;
    }
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1000.0)), arg_0));
    var var_1 = Struct_2(-1, arg_2.b);
    global0 = array<vec2<i32>, 28>();
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(365.0 - arg_0)))), arg_2.a ^ -71770);
}

fn func_7(arg_0: Struct_3, arg_1: u32) -> vec4<bool> {
    for (var var_0 = arg_0.b; true; var_0 = func_6(func_6(~4294967295u).b.x).a.x) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        continue;
    }
    var var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(arg_0.a)), 2147483647);
    var var_1 = Struct_1(vec4<i32>(~var_0.b, 25560, -1, -29795 << ((firstTrailingBit(arg_1) ^ abs(u_input.e)) % 32u)), countOneBits(max(u_input.b.zz, func_6(_wgslsmith_dot_vec3_u32(vec3<u32>(56299u, 0u, 0u), u_input.b.wxy)).b)));
    var var_2 = true;
    for (var var_3: i32; var_3 >= -1; var_3 -= 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_4 = Struct_1(vec4<i32>(~(14421 | firstTrailingBit(-65588)), 32774, -2147483648, firstTrailingBit(_wgslsmith_dot_vec3_i32(~var_1.a.zwz, -vec3<i32>(-2147483648, arg_0.b, 2147483647)))), u_input.b.zy);
        break;
    }
    return vec4<bool>(!all(vec4<bool>(true, !false, func_4(arg_0.a, arg_0), true && false)), any(vec4<bool>(false, (-30182 & arg_0.b) > var_0.b, all(!vec2<bool>(false, false)), func_4(_wgslsmith_f_op_f32(sign(360.0)), arg_0))), all(vec4<bool>(!false, false, !true, false | false)) && !(_wgslsmith_mod_u32(u_input.a, arg_1) < (arg_1 >> (var_1.b.x % 32u))), any(select(!(!vec3<bool>(true, true, true)), vec3<bool>(arg_0.a == -448.0, true, any(vec3<bool>(false, false, true))), true)));
}

fn func_2() -> bool {
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        continue;
    }
    let var_0 = !func_7(func_3(_wgslsmith_f_op_f32(1000.0 + _wgslsmith_f_op_f32(-884.0)), firstLeadingBit(max(vec3<i32>(50618, 7861, 37411), vec3<i32>(u_input.d, -1976, 2147483647))), Struct_2(max(u_input.d, u_input.d), false)), ~(1u >> (~14165u % 32u)));
    var var_1 = Struct_1(vec4<i32>(-min(0, u_input.d), _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-25278), u_input.d), u_input.d), 4357, u_input.d), u_input.b.zz);
    for (var var_2: i32; var_2 > -22465; var_2 -= 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        continue;
    }
    let var_2 = vec2<bool>(var_0.x != (true || true), var_0.x);
    return var_0.x;
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_2(-(i32(-1) * -(2147483647 & 14223)), true);
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
    }
    global0 = array<vec2<i32>, 28>();
    for (var var_1 = -35019; ; ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        continue;
    }
    var var_1 = select(vec3<bool>(var_0.b, true, false), !(!(!vec3<bool>(true, var_0.b, true))), all(!(!vec3<bool>(true, var_0.b, false))) == func_2());
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(45715, _wgslsmith_div_i32(1, -1), u_input.d), -(vec3<i32>(-1, var_0.a, -4685) >> (vec3<u32>(1u, u_input.c, 36854u) % vec3<u32>(32u)))) ^ ~_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.d, var_0.a, 0), vec3<i32>(2147483647, 2147483647, var_0.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483648, var_0.a, var_0.a), vec3<i32>(var_0.a, u_input.d, var_0.a), vec3<i32>(1, var_0.a, u_input.d))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(var_0.a, var_0.a, -2147483648)), select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 6973, -1829), vec3<i32>(-32439, var_0.a, u_input.d)), abs(vec3<i32>(u_input.d, var_0.a, var_0.a)), vec3<bool>(true, var_0.b, var_0.b))), _wgslsmith_sub_vec3_i32(select(-vec3<i32>(u_input.d, u_input.d, var_0.a), ~vec3<i32>(var_0.a, u_input.d, -2147483648), select(vec3<bool>(var_1.x, var_0.b, true), vec3<bool>(var_0.b, false, var_0.b), true)), _wgslsmith_sub_vec3_i32(min(vec3<i32>(-1, 2147483647, 1), vec3<i32>(2147483647, u_input.d, -2147483648)), ~vec3<i32>(u_input.d, var_0.a, u_input.d)))), ~(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, u_input.d, var_0.a), vec3<i32>(-2147483648, var_0.a, 9659))) | select(vec3<i32>(0, -6091, u_input.d), _wgslsmith_mult_vec3_i32(vec3<i32>(31319, 1, u_input.d), vec3<i32>(var_0.a, var_0.a, var_0.a)), 931.0 <= -788.0)));
}

@compute
@workgroup_size(1)
fn main() {
    switch (u_input.d) {
        case -2147483648: {
            let var_0 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(max(vec3<i32>(26157, 12722, u_input.d), vec3<i32>(986, u_input.d, -1))), -func_1()), i32(-1) * -18104), ~13863u > _wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(u_input.e, u_input.b.x)), ~(~u_input.e)));
            for (var var_1 = 1; any(vec2<bool>(var_0.b, all(!vec3<bool>(var_0.b, var_0.b, var_0.b)))); var_1 += 1) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                global0 = array<vec2<i32>, 28>();
                let var_2 = -2302.0;
            }
            if (!(!false)) {
                global0 = array<vec2<i32>, 28>();
                return;
            }
            global0 = array<vec2<i32>, 28>();
            var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2196.0, -447.0)) + _wgslsmith_div_vec2_f32(vec2<f32>(1201.0, -661.0), vec2<f32>(192.0, 142.0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-669.0, 1000.0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1232.0, -504.0)))), vec2<bool>(var_0.b, (-469.0 <= -528.0) | var_0.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1530.0, -2110.0), vec2<f32>(932.0, 607.0)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1399.0, -1818.0)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1820.0, 404.0), vec2<f32>(-272.0, -2486.0), vec2<bool>(var_0.b, var_0.b))), vec2<f32>(-1431.0, -1904.0)))))));
        }
        case 0: {
            var var_0 = _wgslsmith_f_op_f32(556.0 + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(func_3(290.0, vec3<i32>(55597, 10586, u_input.d), Struct_2(-1, false)).a * _wgslsmith_f_op_f32(1738.0 - 350.0)), -(vec3<i32>(30736, 23514, 3005) & vec3<i32>(-1, u_input.d, -59841)), Struct_2(~u_input.d, all(vec3<bool>(true, true, true)))).a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(130.0 * 604.0) - 752.0), 433.0))));
            var var_1 = abs(u_input.c);
        }
        case -1: {
        }
        case -3708: {
            global0 = array<vec2<i32>, 28>();
            global0 = array<vec2<i32>, 28>();
        }
        default: {
            loop {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                let var_0 = ~_wgslsmith_dot_vec4_i32(func_6(u_input.e >> (0u % 32u)).a ^ vec4<i32>(-13663, u_input.d, 2147483647, ~u_input.d), vec4<i32>(-10241, abs(-24569), min(u_input.d, u_input.d), -u_input.d) << (vec4<u32>(74688u >> (0u % 32u), _wgslsmith_dot_vec3_u32(u_input.b.zyz, vec3<u32>(u_input.e, u_input.b.x, 61747u)), reverseBits(u_input.a), 58213u) % vec4<u32>(32u)));
                return;
            }
            global0 = array<vec2<i32>, 28>();
            global0 = array<vec2<i32>, 28>();
            var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-612.0 - _wgslsmith_f_op_f32(-324.0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(311.0, -1000.0, true))))));
        }
    }
    if (all(vec2<bool>(false, true))) {
        let var_0 = countOneBits(abs(-(vec3<i32>(-1) * -vec3<i32>(u_input.d, u_input.d, u_input.d))));
        let var_1 = _wgslsmith_div_vec2_i32(abs(_wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(3646u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]) | min(var_0.zy, vec2<i32>(u_input.d, u_input.d))), _wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(~4294967295u, 28u)])) ^ -global0[_wgslsmith_index_u32(~4294967295u, 28u)];
        var var_2 = u_input.b.x;
    }
    global0 = array<vec2<i32>, 28>();
    switch (~2147483647) {
        case -2147483648: {
            if (false) {
                let var_0 = !(reverseBits(u_input.d >> (0u % 32u)) < abs(firstLeadingBit(-39825)));
                global0 = array<vec2<i32>, 28>();
                var var_1 = ~19658u;
                let var_2 = 30275u <= max(select(4294967295u, u_input.b.x << (20399u % 32u), !true) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, u_input.e), ~vec4<u32>(113327u, 22511u, u_input.e, 4294967295u)), min(29584u | u_input.b.x, max(0u, u_input.a)) << (_wgslsmith_sub_u32(abs(u_input.c), firstLeadingBit(16870u)) % 32u));
                var_1 = _wgslsmith_dot_vec4_u32(u_input.b, ~(~abs(vec4<u32>(u_input.b.x, u_input.e, 64462u, u_input.c)))) << (u_input.c % 32u);
            }
            for (var var_0 = 0; any(func_7(func_3(115.0, abs(_wgslsmith_div_vec3_i32(vec3<i32>(0, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, -2147483648))), Struct_2(~u_input.d, !false)), 0u)); var_0 += 1) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                let var_1 = (func_2() != (-36648 == u_input.d)) && !(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))));
            }
            global0 = array<vec2<i32>, 28>();
            let var_0 = _wgslsmith_f_op_f32(exp2(447.0));
            let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 1187.0, var_0), vec3<f32>(var_0, var_0, 128.0), vec3<bool>(false, false, false))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, 477.0, -836.0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-277.0, 125.0, -989.0)) * vec3<f32>(-922.0, var_0, 754.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-164.0, var_0, -226.0) - vec3<f32>(var_0, 1403.0, var_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1865.0, -2415.0, -1000.0)))), (_wgslsmith_add_u32(u_input.c, u_input.b.x) >> (_wgslsmith_mod_u32(4294967295u, u_input.c) % 32u)) > ~(4294967295u >> (4294967295u % 32u))))));
        }
        case 2147483647: {
            let var_0 = func_3(_wgslsmith_f_op_f32(f32(-1.0) * -2180.0), firstLeadingBit(vec3<i32>(-38138 | _wgslsmith_div_i32(u_input.d, u_input.d), abs(28225), u_input.d)), Struct_2(firstLeadingBit(u_input.d), !false));
            let var_1 = Struct_2(func_1().x << (0u % 32u), true);
            var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(336.0)) * _wgslsmith_f_op_f32(var_0.a + -503.0)) * _wgslsmith_f_op_f32(-var_0.a))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-971.0)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-1000.0, vec3<i32>(var_0.b, var_1.a, 23151), Struct_2(2147483647, var_1.b)).a * _wgslsmith_f_op_f32(f32(-1.0) * -560.0)), 755.0));
            var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 658.0, 1353.0, var_0.a) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a, 172.0, var_0.a, 188.0)))))));
            var var_4 = Struct_1(vec4<i32>(var_1.a, var_0.b, func_6(~13513u).a.x, abs(var_0.b)), u_input.b.wz);
        }
        case 43777: {
            return;
        }
        case 16152: {
            var var_0 = vec3<bool>(func_2() || false, all(!vec2<bool>(any(vec2<bool>(false, false)), !false)), true);
            let var_1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -509.0) - -1126.0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(372.0 * -237.0))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(436.0, -1324.0), _wgslsmith_f_op_f32(floor(-905.0)))))))), u_input.d);
            let var_2 = abs(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.b.xw, vec2<u32>(u_input.b.x, 70851u)), vec2<u32>(u_input.e, 26667u)), u_input.b.zx), _wgslsmith_dot_vec2_u32(~u_input.b.wx, ~vec2<u32>(u_input.b.x, 1u)), ~(~1u & ~u_input.c), 11019u));
        }
        default: {
            if (any(func_7(Struct_3(_wgslsmith_f_op_f32(1000.0 + 2502.0), reverseBits(u_input.d)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(0u, 1u)), firstLeadingBit(vec2<u32>(u_input.c, u_input.b.x))))) & false) {
                global0 = array<vec2<i32>, 28>();
                global0 = array<vec2<i32>, 28>();
                global0 = array<vec2<i32>, 28>();
            }
            for (var var_0 = 42369; var_0 > -39184; ) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-185.0 - 541.0)))))) * _wgslsmith_f_op_f32(f32(-1.0) * -1000.0));
                continue;
            }
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                continue;
            }
            global0 = array<vec2<i32>, 28>();
        }
    }
    global0 = array<vec2<i32>, 28>();
    for (var var_0: i32; ; ) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        let var_1 = !func_7(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1722.0 * -1000.0) * 844.0), 1), _wgslsmith_dot_vec3_u32(select(u_input.b.wyx, u_input.b.zyx, false) | vec3<u32>(31988u, u_input.e, u_input.e), vec3<u32>(1u, ~u_input.c, _wgslsmith_sub_u32(u_input.a, u_input.a)))).wwy;
        for (var var_2 = 1; var_2 >= -11668; global0 = array<vec2<i32>, 28>()) {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            let var_3 = u_input.d;
            var var_4 = u_input.b.xwx;
            break;
        }
        var_0 = -(~(~(-u_input.d)));
        var var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(267.0)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(308.0, 182.0))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(979.0 + _wgslsmith_f_op_f32(1074.0 * -578.0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(333.0 - 437.0), _wgslsmith_f_op_f32(-1183.0))))), _wgslsmith_div_f32(-352.0, func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1113.0))), ~(~vec3<i32>(u_input.d, u_input.d, -58731)), Struct_2(u_input.d, any(vec4<bool>(true, false, var_1.x, true)))).a), 335.0);
        var var_3 = Struct_2(~u_input.d, max(u_input.c, ~u_input.b.x ^ 0u) == ~_wgslsmith_mult_u32(select(4294967295u, 2759u, var_1.x), func_6(u_input.c).b.x));
    }
    let var_0 = vec2<i32>(countOneBits(_wgslsmith_mod_i32(u_input.d, 2861) ^ countOneBits(-3839)), u_input.d);
    switch (-(_wgslsmith_clamp_i32(~u_input.d, _wgslsmith_mod_i32(2147483647, var_0.x) & 0, -(~3424)) << (reverseBits(~max(0u, u_input.a)) % 32u))) {
        case -25398: {
            loop {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                global0 = array<vec2<i32>, 28>();
                var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(161.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1508.0, 930.0)) + _wgslsmith_div_f32(363.0, -510.0))))), func_3(1727.0, vec3<i32>(func_3(func_3(859.0, vec3<i32>(u_input.d, var_0.x, 1981), Struct_2(u_input.d, false)).a, vec3<i32>(u_input.d, u_input.d, var_0.x), Struct_2(u_input.d, false)).b, 0, 17025), Struct_2(_wgslsmith_mod_i32(~var_0.x, abs(u_input.d)), !false)));
                let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1542.0 - 1998.0)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -566.0))) - -265.0)), -26108);
                var var_3 = true;
            }
        }
        case 1: {
            var var_1 = ~(~func_6(_wgslsmith_add_u32(22104u >> (1u % 32u), u_input.e & u_input.c)).a.ywx);
            switch (countOneBits(_wgslsmith_div_i32(~(~18925), _wgslsmith_clamp_i32(var_0.x, u_input.d, var_0.x) & ~u_input.d) ^ ~(-57183))) {
                case 1: {
                }
                case 29637: {
                    let var_2 = Struct_2(u_input.d, false);
                    var var_3 = -firstLeadingBit(vec2<i32>(-14764, u_input.d));
                }
                case 51248: {
                    var_1 = vec3<i32>(2147483647, -1, _wgslsmith_mod_i32(firstLeadingBit(-41047) ^ -2147483647, _wgslsmith_clamp_i32(var_1.x, var_1.x, u_input.d) ^ -1)) >> (countOneBits(u_input.b.wwx) % vec3<u32>(32u));
                    let var_2 = -(~(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483648, u_input.d, var_1.x, -14234), ~vec4<i32>(7767, 0, var_1.x, -34203))));
                    let var_3 = ~1;
                    let var_4 = ~(~_wgslsmith_div_i32(22734, reverseBits(-58283 >> (4294967295u % 32u))));
                    global0 = array<vec2<i32>, 28>();
                }
                default: {
                    var_1 = ~(-(~(vec3<i32>(var_0.x, 0, var_0.x) | vec3<i32>(2147483647, var_0.x, 58743))) | -func_1());
                }
            }
            loop {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                var var_2 = select(_wgslsmith_div_u32(~max(0u, 4294967295u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(90471u, u_input.b.x, u_input.b.x, u_input.c) << (u_input.b % vec4<u32>(32u)), u_input.b), _wgslsmith_clamp_u32(42020u, abs(u_input.b.x), select(12294u, u_input.c, false)))), u_input.c, u_input.a >= 1u);
            }
        }
        case 1830: {
            switch (abs(var_0.x)) {
                case 58211: {
                }
                case 0: {
                    let var_1 = -622.0;
                }
                default: {
                    let var_1 = func_6(~_wgslsmith_mult_u32(select(u_input.b.x, 85947u, true) & 0u, u_input.b.x));
                    var var_2 = func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -1539.0))))))), ~var_1.a.yzx << (select(~_wgslsmith_div_vec3_u32(u_input.b.ywy, vec3<u32>(21588u, 1u, 4294967295u)), ~_wgslsmith_div_vec3_u32(u_input.b.wwx, u_input.b.wzw), 28448u != u_input.b.x) % vec3<u32>(32u)), Struct_2(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(1, u_input.d, var_1.a.x), vec3<i32>(var_0.x, 2147483647, var_0.x)), var_1.a.x), !((false != false) || (-1234.0 != -1424.0))));
                    return;
                }
            }
        }
        default: {
            let var_1 = countOneBits(~global0[_wgslsmith_index_u32(1u, 28u)]);
            var var_2 = Struct_2(var_0.x, true);
            loop {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
                var var_3 = -1104.0;
                continue;
            }
            let var_3 = 1 | var_0.x;
            var var_4 = Struct_1(vec4<i32>(-2147483647, _wgslsmith_sub_i32(abs(_wgslsmith_div_i32(var_2.a, 71957)), select(-20205, -var_3, true)), var_3, 78993), ~u_input.b.yw);
        }
    }
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271.0 - _wgslsmith_f_op_f32(-727.0 * 2210.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-724.0) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(197.0 * -1000.0), 271.0))), _wgslsmith_f_op_f32(floor(-911.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1496.0, 1000.0, false)))))));
    }
    let x = u_input.a;
    s_output = StorageBuffer(0, 1 | (_wgslsmith_div_i32(2147483647, abs(var_0.x)) & -(~var_0.x)));
}

