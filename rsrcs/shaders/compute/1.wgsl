// {"0:0":[107,66,57,82,235,36,49,17,7,30,171,91,236,100,203,151]}
// Seed: 14176635893342147708

struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 18>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_1(arg_0.c.x, arg_0.b, vec4<bool>(!true, !all(vec3<bool>(true, arg_0.a, true)) || !(!false), false, (~29495u <= ~arg_0.d) == (any(vec2<bool>(true, true)) != arg_2.x)), select(24118u, select(arg_1, arg_0.d, !arg_2.x) << (~3246u % 32u), select(arg_2.x, arg_0.a && arg_0.a, arg_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1034.0, arg_0.e.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(514.0, arg_0.e.x)))))));
    let var_1 = _wgslsmith_clamp_vec4_i32(~(~(~(~vec4<i32>(8133, u_input.a.x, u_input.a.x, u_input.a.x)))), select(abs(vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 40889, u_input.a.x)), select(vec4<i32>(u_input.a.x, u_input.a.x >> (arg_0.d % 32u), ~u_input.a.x, abs(u_input.a.x)), vec4<i32>(~u_input.a.x, 25027, 2147483647, u_input.a.x), !var_0.c), false), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1) * -61885, select(-72007, u_input.a.x, true)), countOneBits(min(vec2<i32>(-10746, -11070), u_input.a.zz))), u_input.a.x, 2147483647, u_input.a.x));
    switch (i32(-1) * -23887) {
        case -14931: {
            switch (_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, -u_input.a.x), u_input.a.x)) {
                case -4177: {
                    var var_2 = _wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000.0)))));
                    let var_3 = vec2<bool>(select(!false, false, !(~arg_0.d <= arg_1)), all(!arg_2.yx));
                    let var_4 = _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-arg_0.e.x));
                    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(451.0 - 514.0))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -624.0)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1032.0 - 792.0))))), arg_0.b.x);
                    var var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.x))), var_4, -537.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.e.x, -1078.0))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-288.0, 305.0, _wgslsmith_f_op_f32(283.0 * 723.0), _wgslsmith_f_op_f32(ceil(1037.0))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-202.0, arg_0.e.x, -2231.0, -424.0), vec4<f32>(var_0.b.x, -1000.0, var_5.x, -1516.0), arg_2.x)))));
                }
                default: {
                    var var_2 = -var_1.x;
                }
            }
        }
        default: {
            var_0 = Struct_1(!false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, var_0.e.x) + var_0.b)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.e - vec2<f32>(-769.0, -1644.0)))), !vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(round(arg_0.e.x))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -653.0), 200.0)), var_0.c.x)), arg_2, ~arg_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.e * var_0.e) * _wgslsmith_f_op_vec2_f32(vec2<f32>(715.0, -850.0) + var_0.b))));
        }
    }
    var_0 = Struct_1(false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.b))), !select(select(var_0.c, vec4<bool>(false, arg_0.c.x, var_0.a, arg_2.x), select(arg_2.x, arg_2.x, true)), var_0.c, select(select(arg_2, arg_0.c, arg_0.a), !arg_2, false)), var_0.d & (22500u >> (~firstLeadingBit(1u) % 32u)), _wgslsmith_f_op_vec2_f32(exp2(var_0.e)));
    let var_2 = var_0.e.x;
    return ~(~vec3<u32>(_wgslsmith_clamp_u32(5598u, _wgslsmith_dot_vec4_u32(vec4<u32>(11418u, var_0.d, arg_0.d, 21072u), vec4<u32>(4294967295u, 4294967295u, 28392u, 4704u)), 0u), ~arg_1, arg_0.d));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    if (arg_2.a) {
        if (true) {
            var var_0 = arg_0;
            var var_1 = Struct_1(arg_0.c.x & arg_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-634.0, 1000.0), arg_2.e)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.b.x, -365.0), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.e.x, -1307.0))))))), !var_0.c, _wgslsmith_dot_vec3_u32(select(vec3<u32>(~arg_0.d, 1u, ~var_0.d), _wgslsmith_sub_vec3_u32(func_6(Struct_1(false, vec2<f32>(-118.0, 1632.0), vec4<bool>(true, false, false, true), 28850u, vec2<f32>(-651.0, arg_0.e.x)), arg_2.d, arg_0.c), ~vec3<u32>(arg_2.d, arg_2.d, 0u)), !vec3<bool>(arg_2.c.x, true, var_0.c.x)), firstLeadingBit(abs(vec3<u32>(arg_2.d, arg_0.d, var_0.d))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.d, 55797u, var_0.d), ~vec3<u32>(arg_0.d, 16911u, arg_0.d)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.x, 644.0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -244.0))))))));
            let var_2 = arg_0;
            var var_3 = vec3<i32>(countOneBits(0), _wgslsmith_dot_vec3_i32(vec3<i32>(max(u_input.a.x, 0 << (var_1.d % 32u)), -(~20662), firstLeadingBit(1428)), select(arg_1.yxw, vec3<i32>(-1) * -u_input.a, !vec3<bool>(true, false, var_2.a))), ~(-28868));
        }
        let var_0 = Struct_1(false, arg_0.e, vec4<bool>(!arg_2.a, arg_0.a, arg_2.c.x, !(!false)), select(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(arg_0.d, arg_2.d), ~vec2<u32>(arg_2.d, 0u)), vec2<u32>(reverseBits(arg_2.d), countOneBits(0u))), _wgslsmith_div_u32(1u, 18460u), any(vec2<bool>(true, !false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2042.0))) - vec2<f32>(_wgslsmith_f_op_f32(step(1192.0, 414.0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000.0 - -231.0))))));
        switch (40139) {
            case 1: {
                let var_1 = var_0;
                let var_2 = var_0;
            }
            case 17942: {
                let var_1 = Struct_1(var_0.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, arg_2.e.x)), _wgslsmith_f_op_vec2_f32(arg_0.b * vec2<f32>(-1708.0, 1000.0)))))), !(!vec4<bool>(arg_0.a, true, all(vec4<bool>(false, true, arg_0.c.x, false)), any(vec3<bool>(arg_0.c.x, false, true)))), arg_2.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.b.x, 2068.0))), vec2<f32>(arg_2.b.x, -1006.0), !vec2<bool>(arg_2.a, true)))))));
            }
            default: {
                let var_1 = arg_0;
                var var_2 = vec2<u32>(~countOneBits(countOneBits(~var_1.d)), 13673u);
            }
        }
        let var_1 = 22104;
        for (var var_2 = -2147483648; var_2 <= 17599; var_2 -= 1) {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            continue;
        }
    }
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(~(~(~arg_0.d)), select(~20116u, firstLeadingBit(17793u), any(select(vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_0.a), false))), countOneBits(abs(max(1u, arg_0.d)))), firstLeadingBit(~arg_0.d), arg_2.d);
    var_0 = ~vec3<u32>(countOneBits(~4294967295u | _wgslsmith_mod_u32(1u, 11976u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, ~arg_2.d), vec3<u32>(4294967295u, 14075u, arg_2.d) | ~vec3<u32>(var_0.x, arg_2.d, var_0.x)), arg_2.d);
    var_0 = vec3<u32>(17784u, 4294967295u, ~min(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(54714u, var_0.x, 4294967295u, arg_0.d), vec4<u32>(4294967295u, 20714u, arg_2.d, arg_0.d))));
    var_0 = ~vec3<u32>(arg_0.d >> (func_6(Struct_1(false, arg_2.b, arg_2.c, 4274u, vec2<f32>(-896.0, 138.0)), 1u, arg_0.c).x % 32u), firstTrailingBit(~1221u), ~abs(arg_0.d)) & _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(func_6(Struct_1(arg_0.c.x, arg_2.e, vec4<bool>(false, true, true, true), arg_0.d, arg_2.b), var_0.x, vec4<bool>(arg_2.a, false, arg_0.c.x, true)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 15645u), vec3<u32>(1u, 39746u, 4294967295u)), vec3<u32>(arg_0.d, arg_2.d, arg_0.d), ~vec3<u32>(arg_0.d, var_0.x, 42235u))), reverseBits(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(0u, 0u, arg_0.d)), reverseBits(vec3<u32>(0u, 69789u, var_0.x)), ~vec3<u32>(arg_2.d, var_0.x, arg_0.d))));
    return Struct_1(false, arg_2.e, !select(arg_2.c, select(!vec4<bool>(arg_2.c.x, true, true, arg_2.a), vec4<bool>(false, false, arg_0.a, arg_2.c.x), arg_0.a && false), arg_2.a), 1u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.e), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), 809.0), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_0.b * vec2<f32>(arg_2.b.x, 456.0)))))))));
}

fn func_7(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    if (any(vec4<bool>(!(_wgslsmith_div_f32(-1804.0, arg_0.x) == _wgslsmith_f_op_f32(select(arg_2.e.x, arg_0.x, false))), func_5(Struct_1(false, _wgslsmith_f_op_vec2_f32(arg_2.b + arg_2.b), vec4<bool>(true, true, false, arg_2.c.x), arg_1 & 0u, _wgslsmith_f_op_vec2_f32(exp2(arg_0))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647, 90454, -13370) << (vec4<u32>(arg_1, 83909u, 40355u, arg_1) % vec4<u32>(32u)), ~vec4<i32>(-2147483648, 42519, u_input.a.x, 23220)), func_5(func_5(arg_2, vec4<i32>(u_input.a.x, 75871, 1, u_input.a.x), arg_2, -1), vec4<i32>(1, 105242, u_input.a.x, u_input.a.x), func_5(arg_2, vec4<i32>(36409, 2147483647, u_input.a.x, 39702), Struct_1(true, arg_2.b, vec4<bool>(arg_2.a, arg_2.c.x, false, false), 1779u, arg_0), u_input.a.x), countOneBits(-14871)), -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)).a, all(select(func_5(Struct_1(false, arg_0, arg_2.c, 34194u, vec2<f32>(120.0, arg_2.b.x)), vec4<i32>(-2147483648, -1, 0, u_input.a.x), arg_2, 2147483647).c.wxx, !arg_2.c.xzz, false)), any(arg_2.c.wxz)))) {
        let var_0 = ~vec4<u32>(arg_1, (33694u & _wgslsmith_add_u32(8141u, arg_2.d)) ^ firstTrailingBit(arg_1), 72310u, ~69395u);
        for (; arg_2.c.x; ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            let var_1 = 2147483647;
            var var_2 = arg_2.c.x;
            let var_3 = vec3<u32>(17255u, 1u, _wgslsmith_add_u32(1u, select(~4294967295u, ~var_0.x ^ func_5(arg_2, vec4<i32>(u_input.a.x, 0, var_1, var_1), arg_2, u_input.a.x).d, !(false & true))));
            let var_4 = func_5(func_5(arg_2, _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, u_input.a.x, 2147483647, 1), vec4<i32>(var_1, 33154, u_input.a.x, var_1)), vec4<i32>(1, _wgslsmith_sub_i32(-1, u_input.a.x), ~var_1, var_1)), Struct_1(arg_2.a, arg_2.e, func_5(arg_2, vec4<i32>(var_1, u_input.a.x, var_1, var_1), arg_2, -17639).c, min(func_6(Struct_1(arg_2.c.x, arg_2.b, arg_2.c, var_0.x, vec2<f32>(994.0, -1000.0)), var_3.x, vec4<bool>(false, arg_2.c.x, false, false)).x, _wgslsmith_clamp_u32(4294967295u, 1u, var_3.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, arg_2.e.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e.x, 1000.0) + vec2<f32>(1616.0, arg_2.b.x))))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, -var_1, _wgslsmith_sub_i32(u_input.a.x, 57206)), u_input.a)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, -8388, var_1, var_1) & ~vec4<i32>(var_1, var_1, var_1, 1)), vec4<i32>(~reverseBits(-2147483648), ~u_input.a.x, ~select(u_input.a.x, 50057, arg_2.c.x), 23750)), arg_2, u_input.a.x);
        }
        let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1529.0, arg_2.e.x, 1007.0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, arg_2.b.x, -1174.0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -515.0, 1458.0) * vec3<f32>(arg_2.e.x, -165.0, -1081.0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1113.0, -1036.0) * vec3<f32>(arg_2.e.x, -1806.0, arg_0.x))), !arg_2.c.xyw)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, arg_0.x, 786.0))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 772.0, -173.0) - vec3<f32>(arg_0.x, arg_0.x, arg_2.e.x))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(246.0 + arg_2.e.x), _wgslsmith_f_op_f32(253.0 * arg_0.x), _wgslsmith_f_op_f32(step(arg_2.e.x, arg_0.x))))))));
        let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1188.0 + 1173.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -432.0)), _wgslsmith_f_op_f32(-arg_2.e.x))) - arg_0.x)));
        let var_3 = true;
    }
    if (arg_2.a) {
    }
    var var_0 = _wgslsmith_f_op_f32(arg_0.x - arg_2.e.x);
    var var_1 = 2147483647;
    var_0 = -544.0;
    return u_input.a.x;
}

fn func_4(arg_0: i32) -> Struct_1 {
    var var_0 = (vec3<i32>(_wgslsmith_div_i32(arg_0, 2147483647) >> (_wgslsmith_mod_u32(1u, 10231u) % 32u), func_7(_wgslsmith_f_op_vec2_f32(-vec2<f32>(717.0, 1245.0)), _wgslsmith_dot_vec4_u32(vec4<u32>(15380u, 14820u, 4294967295u, 1814u), vec4<u32>(5059u, 42864u, 1u, 0u)), func_5(Struct_1(false, vec2<f32>(132.0, -1157.0), vec4<bool>(true, true, false, false), 32731u, vec2<f32>(1000.0, -1120.0)), vec4<i32>(2147483647, arg_0, arg_0, 1), Struct_1(false, vec2<f32>(689.0, -451.0), vec4<bool>(true, false, true, true), 18667u, vec2<f32>(-737.0, 260.0)), 1)), arg_0) >> (vec3<u32>(17251u, max(_wgslsmith_sub_u32(1u, 26141u), min(23612u, 0u)), ~countOneBits(71565u)) % vec3<u32>(32u))) << ((countOneBits(~(~vec3<u32>(43318u, 1u, 35518u))) >> (~(~vec3<u32>(4294967295u, 4294967295u, 30685u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    switch (u_input.a.x) {
        case 4090: {
            if (!(!true)) {
                let var_1 = !vec3<bool>(!any(vec3<bool>(true, true, false)), false, all(vec2<bool>(true, !false)));
            }
            var var_1 = 56528u > _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(10832u, 56615u, 64816u), vec3<u32>(21456u, 24081u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 61623u, 1u), vec3<u32>(4294967295u, 39102u, 85071u))), firstLeadingBit(vec3<u32>(86779u, 17457u, 1u)) & select(vec3<u32>(64895u, 22339u, 30448u), vec3<u32>(45822u, 51246u, 32875u), vec3<bool>(true, false, false))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 40620u, 2694u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 15003u, 46273u), vec4<u32>(42685u, 4294967295u, 27695u, 23495u))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 54427u, 1u), vec3<u32>(0u, 16352u, 65724u)) & _wgslsmith_mult_u32(1287u, 0u), ~0u & max(8193u, 67018u)));
        }
        default: {
        }
    }
    for (var var_1 = -59275; var_1 > -21378; var_1 += 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        var var_2 = !select(!(!(!vec2<bool>(false, true))), func_5(func_5(func_5(Struct_1(true, vec2<f32>(-847.0, -1576.0), vec4<bool>(true, false, true, true), 36657u, vec2<f32>(358.0, 1766.0)), vec4<i32>(arg_0, 2147483647, u_input.a.x, -1), Struct_1(true, vec2<f32>(-141.0, 172.0), vec4<bool>(true, false, true, false), 143161u, vec2<f32>(-1197.0, 1000.0)), 1179), ~vec4<i32>(-12569, -36947, var_0.x, -81995), Struct_1(true, vec2<f32>(704.0, -766.0), vec4<bool>(true, true, true, true), 30556u, vec2<f32>(1452.0, 978.0)), u_input.a.x), vec4<i32>(-1) * -vec4<i32>(arg_0, u_input.a.x, var_0.x, u_input.a.x), func_5(Struct_1(false, vec2<f32>(703.0, -160.0), vec4<bool>(true, false, false, true), 4294967295u, vec2<f32>(-516.0, 116.0)), countOneBits(vec4<i32>(1, 32266, u_input.a.x, 1)), func_5(Struct_1(true, vec2<f32>(572.0, 1000.0), vec4<bool>(false, true, false, false), 0u, vec2<f32>(1566.0, 363.0)), vec4<i32>(10797, var_0.x, -16320, 31978), Struct_1(true, vec2<f32>(1000.0, 1277.0), vec4<bool>(true, false, false, true), 13452u, vec2<f32>(-102.0, -680.0)), arg_0), -var_0.x), -1).c.wx, any(select(!vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), any(vec4<bool>(true, false, false, true)))));
    }
    var_0 = -(~max(vec3<i32>(u_input.a.x, 2147483647, arg_0), vec3<i32>(arg_0, reverseBits(24120), select(-3596, var_0.x, true))));
    var var_1 = firstTrailingBit(~reverseBits(firstLeadingBit(vec3<u32>(4688u, 0u, 1u)))) << (func_6(Struct_1(all(vec3<bool>(true, true, false)) | (1220.0 < 434.0), vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -333.0), _wgslsmith_f_op_f32(774.0 + 295.0)), !vec4<bool>(false, true, false, true), ~min(0u, 1780u), vec2<f32>(1149.0, 1736.0)), abs(min(~4294967295u, _wgslsmith_mult_u32(64695u, 10467u))), !func_5(func_5(Struct_1(true, vec2<f32>(-460.0, 633.0), vec4<bool>(false, false, false, false), 4294967295u, vec2<f32>(-647.0, -420.0)), vec4<i32>(u_input.a.x, 1, -16664, u_input.a.x), Struct_1(false, vec2<f32>(732.0, 369.0), vec4<bool>(false, true, true, false), 6329u, vec2<f32>(2196.0, 1092.0)), arg_0), -vec4<i32>(-2147483648, arg_0, 0, 2147483647), func_5(Struct_1(true, vec2<f32>(-1121.0, 159.0), vec4<bool>(true, true, true, false), 86953u, vec2<f32>(591.0, -963.0)), vec4<i32>(u_input.a.x, 0, 21259, u_input.a.x), Struct_1(true, vec2<f32>(1208.0, 1043.0), vec4<bool>(true, true, true, true), 0u, vec2<f32>(-590.0, 2083.0)), arg_0), abs(var_0.x)).c) % vec3<u32>(32u));
    return Struct_1(!(!(!true)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1548.0 - 1000.0), _wgslsmith_f_op_f32(select(983.0, 2186.0, true)))), vec2<f32>(-558.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000.0 * -743.0), _wgslsmith_div_f32(-340.0, -232.0)))))), !(!(!vec4<bool>(false, false, false, true))), var_1.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1311.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-589.0))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(647.0, -1079.0)) - vec2<f32>(-517.0, -1000.0))))));
}

fn func_3() -> u32 {
    switch (_wgslsmith_clamp_i32(~(-u_input.a.x) << ((_wgslsmith_mult_u32(35864u, _wgslsmith_div_u32(12478u, 1u)) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(16655u, 4294967295u), vec2<u32>(1u, 1u)) % 32u)) % 32u), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1, 2147483647, u_input.a.x), -21665), u_input.a.x)) {
        case -12660: {
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            }
            var var_0 = func_4(2147483647);
            var_0 = Struct_1(!(false | (!true && all(var_0.c.xy))), var_0.b, var_0.c, 26987u, var_0.e);
            var var_1 = any(vec3<bool>(select(!var_0.c.x || (u_input.a.x < -25732), var_0.c.x, var_0.c.x), var_0.a, !var_0.a));
            if (!func_4(u_input.a.x).c.x) {
                let var_2 = _wgslsmith_mult_vec3_i32(~min(u_input.a, vec3<i32>(min(10873, u_input.a.x), u_input.a.x ^ 14003, u_input.a.x)), max(max(u_input.a << (firstTrailingBit(vec3<u32>(1u, 11214u, var_0.d)) % vec3<u32>(32u)), (u_input.a ^ vec3<i32>(u_input.a.x, -29465, u_input.a.x)) << (~vec3<u32>(5277u, 87867u, var_0.d) % vec3<u32>(32u))), u_input.a));
                var_0 = func_5(Struct_1(func_5(Struct_1(true != var_0.c.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-152.0, var_0.b.x), var_0.b)), !var_0.c, var_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_0.b.x))), firstTrailingBit(vec4<i32>(u_input.a.x, 0, 0, 0)), func_4(~(-5209)), var_2.x).a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, 939.0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.e.x * var_0.e.x)))), var_0.c, func_4(~(~u_input.a.x)).d, func_5(func_5(func_4(0), vec4<i32>(2147483647, 24313, 1, u_input.a.x) & vec4<i32>(u_input.a.x, var_2.x, u_input.a.x, -7377), Struct_1(var_0.a, var_0.e, var_0.c, 1809u, vec2<f32>(-441.0, var_0.e.x)), firstLeadingBit(u_input.a.x)), -vec4<i32>(-44780, var_2.x, var_2.x, u_input.a.x) >> (firstLeadingBit(vec4<u32>(var_0.d, 0u, 0u, var_0.d)) % vec4<u32>(32u)), func_5(Struct_1(false, vec2<f32>(var_0.b.x, var_0.e.x), var_0.c, 45403u, vec2<f32>(var_0.b.x, var_0.e.x)), vec4<i32>(var_2.x, -2147483648, var_2.x, -2311) & vec4<i32>(18788, u_input.a.x, var_2.x, u_input.a.x), func_5(Struct_1(var_0.a, vec2<f32>(var_0.b.x, 1000.0), var_0.c, 27593u, var_0.e), vec4<i32>(2147483647, -74580, var_2.x, -45905), Struct_1(var_0.c.x, var_0.e, vec4<bool>(true, true, false, var_0.a), var_0.d, vec2<f32>(-1000.0, var_0.b.x)), u_input.a.x), 29680), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 3372) << (vec2<u32>(98777u, 33891u) % vec2<u32>(32u)), select(vec2<i32>(u_input.a.x, var_2.x), vec2<i32>(-1, u_input.a.x), vec2<bool>(true, true)))).b), vec4<i32>(~(var_2.x << (0u % 32u)), 1, var_2.x, ~select(i32(-1) * -49951, _wgslsmith_dot_vec2_i32(u_input.a.xy, var_2.xy), var_0.c.x)), func_5(Struct_1(_wgslsmith_f_op_f32(-var_0.b.x) > _wgslsmith_f_op_f32(f32(-1.0) * -2132.0), var_0.e, vec4<bool>(!false, var_0.a, var_0.c.x || var_0.c.x, true & var_0.c.x), 61431u, _wgslsmith_f_op_vec2_f32(var_0.e - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, 162.0)))), firstTrailingBit(vec4<i32>(~var_2.x, countOneBits(7268), -1017 | 15107, ~var_2.x)), Struct_1(all(var_0.c.yy), _wgslsmith_f_op_vec2_f32(var_0.b * var_0.b), select(vec4<bool>(true, var_0.a, true, true), !var_0.c, vec4<bool>(var_0.c.x, false, true, true)), ~35497u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, 867.0) * var_0.b) + var_0.b)), max(select(-29493, var_2.x, false), -u_input.a.x) << (func_6(Struct_1(true, var_0.e, vec4<bool>(false, var_0.a, false, var_0.a), 1u, vec2<f32>(var_0.e.x, var_0.b.x)), _wgslsmith_div_u32(0u, var_0.d), func_4(-34455).c).x % 32u)), u_input.a.x);
                var var_3 = Struct_1(~_wgslsmith_add_u32(~var_0.d, var_0.d & var_0.d) == (var_0.d << (~func_5(Struct_1(true, var_0.b, var_0.c, var_0.d, var_0.e), vec4<i32>(u_input.a.x, var_2.x, u_input.a.x, -48422), Struct_1(false, var_0.e, vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), 1u, vec2<f32>(-1000.0, var_0.e.x)), -22260).d % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(Struct_1(var_0.c.x, vec2<f32>(1414.0, -2170.0), vec4<bool>(var_0.c.x, var_0.a, var_0.c.x, false), 76516u, vec2<f32>(-160.0, var_0.e.x)), vec4<i32>(u_input.a.x, 13769, 17181, -2147483648), Struct_1(var_0.a, vec2<f32>(-881.0, var_0.b.x), var_0.c, var_0.d, vec2<f32>(var_0.b.x, var_0.b.x)), var_2.x).e.x)), -337.0), var_0.c, var_0.d, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-737.0, 265.0)), _wgslsmith_f_op_f32(abs(157.0))));
                var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-243.0, _wgslsmith_f_op_f32(-105.0 * _wgslsmith_div_f32(var_0.b.x, -147.0)), _wgslsmith_f_op_f32(sign(var_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1904.0, var_0.b.x)) + var_3.e.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.e.x, -373.0, var_3.b.x, 307.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.e.x, 332.0, var_3.e.x, var_0.e.x) * vec4<f32>(var_3.e.x, var_3.b.x, -790.0, -1837.0))))) + vec4<f32>(_wgslsmith_f_op_f32(-504.0 + _wgslsmith_f_op_f32(var_0.e.x + 1342.0)), -1568.0, 549.0, func_5(func_5(Struct_1(true, vec2<f32>(var_0.e.x, -486.0), vec4<bool>(true, false, var_3.a, var_3.c.x), var_3.d, vec2<f32>(var_3.b.x, var_3.b.x)), vec4<i32>(var_2.x, var_2.x, var_2.x, u_input.a.x), Struct_1(false, vec2<f32>(var_3.b.x, var_3.e.x), vec4<bool>(false, false, false, var_3.a), var_3.d, vec2<f32>(var_3.e.x, var_0.b.x)), 12108), vec4<i32>(u_input.a.x, var_2.x, var_2.x, -1), func_5(Struct_1(false, var_0.b, var_0.c, 16766u, vec2<f32>(var_0.e.x, var_3.b.x)), vec4<i32>(-44478, u_input.a.x, -2147483648, u_input.a.x), Struct_1(var_0.c.x, vec2<f32>(-110.0, var_3.b.x), var_0.c, var_0.d, var_0.e), 1), u_input.a.x).e.x)));
            }
        }
        default: {
            if (all(vec3<bool>(true, false, -1876.0 < _wgslsmith_f_op_f32(exp2(-308.0))))) {
                let var_0 = !(!(!vec4<bool>(!false, func_4(-13601).a, !false, true)));
                var var_1 = 89646u;
                var var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1) * -select(u_input.a, vec3<i32>(-9916, u_input.a.x, -2147483648), true), abs(_wgslsmith_add_vec3_i32(vec3<i32>(0, u_input.a.x, -2147483648), vec3<i32>(u_input.a.x, -9515, u_input.a.x)) << (countOneBits(vec3<u32>(1u, 0u, 0u)) % vec3<u32>(32u))));
                var_1 = 48509u;
            }
            var var_0 = _wgslsmith_mult_i32(max(-68530, abs(14286 & reverseBits(0))), _wgslsmith_add_i32(u_input.a.x, -u_input.a.x));
            var_0 = u_input.a.x;
        }
    }
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        continue;
    }
    let var_0 = ~vec3<u32>(~countOneBits(0u) & 53202u, ~(~_wgslsmith_mult_u32(4294967295u, 1u)), max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 31865u) >> (vec3<u32>(1907u, 0u, 108188u) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(74488u, 96152u, 0u), vec3<u32>(1u, 29716u, 1u)) >> ((4294967295u << (4294967295u % 32u)) % 32u)));
    if (_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.a.x, u_input.a.x, 44317, 19254) >> (vec4<u32>(0u, 103313u, 68349u, 29633u) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_sub_i32(35059, u_input.a.x), -u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1618, u_input.a.x, -9057, u_input.a.x), vec4<i32>(-45003, u_input.a.x, -43165, -1))), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(26300, 1, u_input.a.x, -41375), vec4<i32>(30016, u_input.a.x, 0, 39636))))) < (_wgslsmith_sub_i32(min(u_input.a.x, -20114), 19965) ^ reverseBits(u_input.a.x))) {
        for (var var_1: i32; var_1 > 39317; var_1 += 1) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        }
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            var var_1 = (i32(-1) * -20910) << (abs(~0u) % 32u);
            break;
        }
    }
    let var_1 = 46065;
    return func_4(var_1).d;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = u_input.a.xz;
    switch (-_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -2147483648), var_0.x, firstTrailingBit(-4575), min(6630, var_0.x)) | vec4<i32>(~var_0.x, _wgslsmith_div_i32(0, u_input.a.x), var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1, var_0.x, var_0.x), u_input.a)), -(~(~vec4<i32>(u_input.a.x, -38721, u_input.a.x, 34594))))) {
        case 23374: {
            let var_1 = arg_0.d & _wgslsmith_div_u32(43857u, 4294967295u);
            let var_2 = ~firstLeadingBit(~vec3<u32>(0u, func_3(), ~var_1));
        }
        default: {
            switch (~u_input.a.x) {
                case -1: {
                    var_0 = vec2<i32>(-(~(-34010)), _wgslsmith_div_i32(var_0.x, var_0.x));
                    var_0 = _wgslsmith_div_vec2_i32(-(~u_input.a.xz), u_input.a.xx);
                    let var_1 = func_4(firstTrailingBit(~(-9515)));
                }
                case 0: {
                    let var_1 = func_5(func_5(arg_1, -select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 0, 1)), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) << (vec4<u32>(arg_0.d, 30479u, 4294967295u, 19851u) % vec4<u32>(32u)), vec4<bool>(true, true, arg_1.c.x, arg_1.a)), arg_0, min(51382, -16560)), vec4<i32>(-1, _wgslsmith_div_i32(reverseBits(firstLeadingBit(-1)), _wgslsmith_add_i32(_wgslsmith_mod_i32(-1, 22154), reverseBits(1))), ~(~(-3367)), _wgslsmith_div_i32(~(~var_0.x), -1)), Struct_1(arg_0.c.x, vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1.0) * -179.0)), arg_1.c, arg_0.d, arg_1.e), ~(var_0.x >> (func_3() % 32u)));
                    var_0 = -countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, _wgslsmith_clamp_i32(u_input.a.x, var_0.x, var_0.x)), _wgslsmith_div_vec2_i32(abs(u_input.a.zy), abs(vec2<i32>(u_input.a.x, 27992)))));
                    var_0 = -u_input.a.xz;
                }
                default: {
                    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), 1083.0, _wgslsmith_f_op_f32(abs(arg_1.e.x)))));
                    let var_2 = arg_1.c;
                    var var_3 = func_4(-36015 & _wgslsmith_add_i32(-30682, u_input.a.x));
                    var var_4 = Struct_1(arg_0.c.x, vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.b.x)), var_3.e.x), arg_1.c, ~arg_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3.b, vec2<f32>(var_3.e.x, var_1.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.b.x), vec2<f32>(var_1.x, var_3.e.x))))));
                }
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        var_0 = u_input.a.yx;
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            var var_1 = Struct_1(!(arg_0.e.x >= arg_1.b.x), arg_1.e, vec4<bool>(arg_0.a, any(arg_1.c.xw), arg_1.a, !(!(!arg_0.c.x))), arg_1.d, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1267.0))), -800.0));
            var_1 = arg_1;
        }
        switch (~8096) {
            case 0: {
                var var_1 = vec4<bool>(arg_1.c.x, select(true, arg_1.a, any(!arg_0.c.xzy)) != true, !any(vec4<bool>(arg_1.c.x | arg_0.c.x, true, any(arg_0.c), !true)), true);
                var_0 = u_input.a.yy;
            }
            default: {
                var_0 = select(countOneBits(u_input.a.yy), _wgslsmith_add_vec2_i32(u_input.a.yy << (vec2<u32>(1u << (13226u % 32u), ~arg_0.d) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.a.zx, ~(vec2<i32>(2147483647, 2147483647) >> (vec2<u32>(arg_0.d, arg_0.d) % vec2<u32>(32u))))), vec2<bool>(!any(!vec3<bool>(arg_1.c.x, false, arg_0.c.x)), true));
                var var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.b, _wgslsmith_f_op_vec2_f32(arg_1.e - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b.x, -2252.0))))))), vec4<bool>(func_5(Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.x, arg_1.b.x)), func_5(Struct_1(arg_1.c.x, arg_0.e, arg_0.c, 8195u, vec2<f32>(419.0, arg_1.e.x)), vec4<i32>(var_0.x, -27786, -27144, -66064), Struct_1(false, vec2<f32>(642.0, arg_1.e.x), vec4<bool>(false, true, arg_1.a, true), 73038u, arg_1.b), var_0.x).c, arg_1.d, vec2<f32>(arg_0.e.x, arg_0.b.x)), -select(vec4<i32>(66386, -1, var_0.x, 2147483647), vec4<i32>(-13960, -27123, u_input.a.x, var_0.x), true), func_4(~48675), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -11418, var_0.x, var_0.x), vec4<i32>(-2147483648, var_0.x, u_input.a.x, var_0.x))).c.x, false, select(40701u != arg_0.d, func_5(Struct_1(arg_0.a, arg_1.b, vec4<bool>(arg_1.c.x, false, arg_0.a, arg_0.c.x), arg_0.d, vec2<f32>(arg_1.b.x, arg_0.b.x)), vec4<i32>(u_input.a.x, 68432, u_input.a.x, 55080) >> (vec4<u32>(4294967295u, arg_0.d, 4294967295u, 4294967295u) % vec4<u32>(32u)), Struct_1(false, vec2<f32>(arg_1.e.x, -1089.0), vec4<bool>(arg_0.a, true, arg_1.a, arg_0.c.x), 4294967295u, vec2<f32>(496.0, 1041.0)), -u_input.a.x).a, any(arg_1.c.zz)), true), 1u, vec2<f32>(_wgslsmith_f_op_f32(1073.0 * 1056.0), arg_1.b.x));
            }
        }
        var_0 = countOneBits(u_input.a.xy);
        var var_1 = select(select(-select(max(vec4<i32>(2147483647, -49467, 40947, 43802), vec4<i32>(1, 0, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 10471, var_0.x, u_input.a.x), vec4<i32>(50602, 1, u_input.a.x, var_0.x), vec4<i32>(var_0.x, 2147483647, u_input.a.x, 1)), arg_0.c), -vec4<i32>(-11969 & u_input.a.x, min(u_input.a.x, var_0.x), _wgslsmith_sub_i32(u_input.a.x, 2147483647), _wgslsmith_div_i32(12672, var_0.x)), !(!arg_1.c)), vec4<i32>(_wgslsmith_clamp_i32(-16173, -34937, -33598), firstLeadingBit(var_0.x) >> (4294967295u % 32u), var_0.x, -6720), !((firstLeadingBit(u_input.a.x) >= ~(-2147483648)) && arg_0.c.x));
    }
    switch (-2147483648) {
        case 0: {
            switch (~reverseBits(u_input.a.x)) {
                case -4118: {
                    var_0 = max(u_input.a.xz, vec2<i32>(~min(u_input.a.x, u_input.a.x) & ~2147483647, -var_0.x));
                    let var_1 = arg_0;
                }
                case -2132: {
                }
                case 17397: {
                    var_0 = vec2<i32>(var_0.x, ~(-5972));
                    var_0 = vec2<i32>(-2147483648, -firstTrailingBit(abs(~(-1))));
                    var_0 = vec2<i32>(9724, -2147483648);
                    var var_1 = arg_1;
                }
                default: {
                    var_0 = u_input.a.yz ^ abs(u_input.a.zx);
                    var var_1 = arg_0.d;
                    var_0 = ~u_input.a.xz;
                    let var_2 = Struct_1(any(arg_0.c.xwy), _wgslsmith_f_op_vec2_f32(-arg_1.e), !(!arg_1.c), _wgslsmith_div_u32(arg_1.d, 12270u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_4(u_input.a.x).e)));
                    let var_3 = Struct_1(all(vec2<bool>(any(func_4(-24231).c), all(select(vec4<bool>(true, false, arg_1.a, true), vec4<bool>(arg_0.a, true, true, false), vec4<bool>(arg_1.c.x, false, true, var_2.c.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.e))), 31610u == arg_0.d)), arg_0.c, var_2.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2.e)) + _wgslsmith_div_vec2_f32(vec2<f32>(1000.0, arg_0.e.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.e.x, arg_0.b.x)))))));
                }
            }
            var_0 = vec2<i32>(-1, (u_input.a.x | _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.x, u_input.a.x, -8555, -18950)), vec4<i32>(u_input.a.x, 1, var_0.x, var_0.x) | vec4<i32>(u_input.a.x, -37155, var_0.x, var_0.x))) | 2147483647);
        }
        default: {
            switch (-1) {
                case -64155: {
                }
                default: {
                    var_0 = abs(~vec2<i32>(func_7(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, arg_0.b.x)), ~arg_0.d, func_5(Struct_1(true, arg_1.e, vec4<bool>(arg_1.c.x, false, arg_0.c.x, arg_1.c.x), 4294967295u, vec2<f32>(arg_1.e.x, -385.0)), vec4<i32>(var_0.x, var_0.x, 1, 74386), arg_0, var_0.x)), ~_wgslsmith_add_i32(var_0.x, -2407)));
                    var var_1 = vec3<u32>(_wgslsmith_sub_u32(~77970u, 54365u), min(_wgslsmith_div_u32(~(~arg_0.d), 1u), ~_wgslsmith_mod_u32(0u, arg_1.d)), 4294967295u);
                    let var_2 = vec4<u32>(2402u, ~arg_1.d, 0u, 0u << (4294967295u % 32u));
                    var var_3 = arg_0.a;
                    var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(var_2.yxw | select(vec3<u32>(4294967295u, var_1.x, arg_1.d), vec3<u32>(var_1.x, 37903u, 0u), arg_1.c.xwy)), vec3<u32>(firstLeadingBit(1u), 22018u, ~6264u)), var_2.zwy);
                }
            }
            var_0 = u_input.a.xy;
            switch (reverseBits(0) | -2147483648) {
                case -2147483648: {
                    var var_1 = Struct_1(!arg_1.a, arg_0.b, vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.e.x), 711.0, true | arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-516.0) - _wgslsmith_div_f32(arg_0.b.x, 846.0)) != func_4(0).b.x, firstLeadingBit(~78665u) > arg_1.d), max(32799u, ~_wgslsmith_add_u32(arg_0.d, arg_1.d)) >> (~(~firstLeadingBit(arg_0.d)) % 32u), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), 180.0), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(arg_1.e.x * arg_1.e.x), arg_0.e.x))), !arg_0.a)));
                    var_0 = vec2<i32>(~u_input.a.x, -var_0.x);
                }
                case -1: {
                    var_0 = vec2<i32>(1, ~(-(~countOneBits(1))));
                }
                default: {
                    let var_1 = any(select(arg_1.c.wz, !select(func_5(arg_0, vec4<i32>(2147483647, u_input.a.x, 0, -2147483648), arg_0, -18411).c.xy, !vec2<bool>(arg_0.c.x, true), vec2<bool>(false, arg_0.a)), func_4(_wgslsmith_add_i32(~var_0.x, ~2147483647)).c.yz));
                    let var_2 = _wgslsmith_div_f32(-1000.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1094.0)) + _wgslsmith_f_op_f32(-arg_1.e.x)));
                    var var_3 = arg_0;
                    var var_4 = _wgslsmith_f_op_f32(-1251.0 * 503.0);
                    let var_5 = vec4<f32>(2197.0, _wgslsmith_f_op_f32(abs(arg_0.e.x)), _wgslsmith_f_op_f32(1166.0 * 566.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-239.0)))), arg_0.e.x, var_3.a)));
                }
            }
            switch (max(firstTrailingBit(u_input.a.x), u_input.a.x)) {
                case -17485: {
                    var var_1 = -(~vec4<i32>(~u_input.a.x, abs(u_input.a.x) >> (firstTrailingBit(arg_1.d) % 32u), max(u_input.a.x, var_0.x | var_0.x), 0));
                    var var_2 = arg_1;
                    return -min(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(18852, var_0.x, var_1.x, var_1.x) ^ vec4<i32>(0, var_0.x, var_0.x, 20867), vec4<i32>(var_0.x, var_0.x, -2147483648, var_1.x)), ~min(vec4<i32>(0, 15356, u_input.a.x, 2147483647), vec4<i32>(-43588, var_0.x, -4571, -1))), firstTrailingBit(-(vec4<i32>(var_0.x, 5282, 8817, var_0.x) & vec4<i32>(u_input.a.x, var_1.x, -10392, -2147483648))));
                }
                case -29765: {
                    var var_1 = vec4<i32>(abs(-_wgslsmith_sub_i32(u_input.a.x, 2147483647)) << (4294967295u % 32u), -84502, ~2641, firstLeadingBit(u_input.a.x));
                }
                case 16154: {
                    let var_1 = Struct_1(arg_0.c.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(max(103.0, arg_0.e.x))), arg_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -686.0), _wgslsmith_f_op_f32(min(174.0, -149.0)))), select(vec2<bool>(arg_1.c.x, 4294967295u > 30936u), arg_0.c.yy, arg_1.c.yz))), arg_0.c, _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(21024u, arg_1.d, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(6732u, arg_0.d, 4294967295u), vec3<u32>(arg_0.d, 0u, 0u), vec3<u32>(20441u, arg_0.d, arg_1.d)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.d, arg_1.d, 89133u), vec3<u32>(arg_1.d, 53479u, arg_1.d))), firstTrailingBit(firstTrailingBit(vec3<u32>(74404u, arg_0.d, 4294967295u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-167.0, _wgslsmith_f_op_f32(-arg_1.e.x)))));
                    var var_2 = u_input.a;
                    var_2 = select(abs(u_input.a), _wgslsmith_mult_vec3_i32(-u_input.a, _wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.a.x, u_input.a.x, var_0.x), vec3<i32>(1, 40221, -3595), vec3<bool>(arg_0.c.x, arg_1.a, true)) >> (firstLeadingBit(vec3<u32>(0u, arg_1.d, 4294967295u)) % vec3<u32>(32u)), max(vec3<i32>(var_2.x, 2147483647, var_2.x), u_input.a) | vec3<i32>(u_input.a.x, -7225, 1))), var_1.a);
                }
                default: {
                    var var_1 = u_input.a.x;
                }
            }
            let var_1 = (u_input.a.x > 43566) | (arg_1.e.x >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1168.0 * arg_0.e.x))), -544.0)));
        }
    }
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(54489u, 1u, arg_0.d, 55730u), vec4<u32>(1u, 49452u, arg_0.d, arg_0.d)) | vec4<u32>(arg_1.d, arg_1.d, 4294967295u, 53869u)), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(57920u, 43880u, arg_1.d), vec3<u32>(arg_1.d, 1u, 0u)), func_3(), ~4294967295u, _wgslsmith_div_u32(arg_0.d, 1u)))), vec4<u32>(~(~arg_1.d) >> (~arg_0.d % 32u), arg_0.d, ~4294967295u, _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 48476u, 4294967295u), vec3<u32>(arg_1.d, 1u, 75026u)), reverseBits(~arg_0.d))));
    return _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a.x, 82767, 83962, u_input.a.x)) >> (vec4<u32>(_wgslsmith_clamp_u32(1u, arg_1.d, 4294967295u), ~30949u, func_3(), _wgslsmith_sub_u32(1976u, 4294967295u)) % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(26121, u_input.a.x, u_input.a.x, var_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(1, -2147483648, -21166, var_0.x), vec4<i32>(var_0.x, 1, -32920, 2147483647)))), ~vec4<i32>(u_input.a.x, ~1, -(~u_input.a.x), u_input.a.x));
}

fn func_8(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~max(~(~vec4<u32>(arg_1, 1u, 65742u, arg_1)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_1, 33002u, arg_1), vec4<u32>(1u, arg_1, arg_1, 1u))), ~firstLeadingBit(vec4<u32>(arg_1 | 1u, 1u, arg_1, firstTrailingBit(0u))));
    var var_1 = 38092;
    let var_2 = !(!vec3<bool>(any(select(vec4<bool>(arg_2, arg_2, false, true), vec4<bool>(false, arg_2, arg_2, false), arg_2)), -521.0 >= -292.0, false & !false));
    switch (-11007) {
        case 21956: {
            let var_3 = func_4(_wgslsmith_mult_i32(abs(-1 >> (1u % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(arg_0, arg_0), vec4<i32>(-1, arg_3, u_input.a.x, -11261))) ^ u_input.a.x);
            let var_4 = select(!select(vec4<bool>(any(vec4<bool>(true, true, arg_2, false)), -1618.0 > var_3.b.x, true, false || var_2.x), vec4<bool>(false, var_2.x | var_2.x, 4294967295u > var_3.d, !true), select(var_3.c, select(vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(false, false, var_2.x, var_3.c.x), vec4<bool>(arg_2, true, true, arg_2)), !var_3.c)), func_5(func_5(Struct_1(var_2.x, vec2<f32>(-628.0, 1000.0), select(vec4<bool>(var_2.x, true, arg_2, false), vec4<bool>(false, true, false, false), var_3.a), 1u, var_3.e), vec4<i32>(-1) * -arg_0, Struct_1(all(vec3<bool>(true, true, true)), vec2<f32>(-152.0, var_3.b.x), func_5(Struct_1(arg_2, vec2<f32>(var_3.e.x, -284.0), var_3.c, var_3.d, vec2<f32>(var_3.b.x, -112.0)), vec4<i32>(arg_3, -2147483648, arg_3, arg_3), var_3, u_input.a.x).c, ~var_0, _wgslsmith_f_op_vec2_f32(-var_3.b)), arg_0.x), vec4<i32>(_wgslsmith_sub_i32(abs(u_input.a.x), arg_3 << (var_0 % 32u)), -(arg_3 << (0u % 32u)), 7002 << (var_3.d % 32u), i32(-1) * -1), var_3, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, u_input.a.x, arg_3) & u_input.a, vec3<i32>(arg_0.x, arg_3, -2226))).c, vec4<bool>(all(!vec2<bool>(true, false)) || var_2.x, all(!func_5(var_3, vec4<i32>(-18450, arg_0.x, arg_3, u_input.a.x), var_3, arg_3).c), !var_3.a, all(!select(vec3<bool>(true, var_2.x, true), var_3.c.xwx, true))));
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var_1 = u_input.a.x;
                var_1 = _wgslsmith_mod_i32(40945, arg_0.x);
                var_1 = abs(-1);
                break;
            }
            let var_5 = func_4(~(-1 ^ ~(-2147483648 ^ -17555)));
            var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(777.0 + 1018.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1847.0 + 521.0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1171.0 * _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), var_5.b.x))));
        }
        case 2147483647: {
            return 171.0;
        }
        default: {
            var var_3 = arg_0.x;
        }
    }
    for (var var_3 = -1; ; ) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(697.0 * 523.0)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-433.0, 998.0), vec2<f32>(1000.0, 573.0))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-500.0, 824.0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-590.0, -1352.0))))))));
    }
    return 681.0;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> vec2<f32> {
    var var_0 = false;
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -1946.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(617.0)))), arg_2), _wgslsmith_f_op_f32(func_8(func_2(Struct_1(arg_3.x, vec2<f32>(arg_2, -537.0), vec4<bool>(true, arg_3.x, arg_3.x, true), arg_0, vec2<f32>(-238.0, arg_2)), Struct_1(arg_3.x, vec2<f32>(-910.0, arg_2), vec4<bool>(false, arg_3.x, false, arg_3.x), arg_0, vec2<f32>(-817.0, -1337.0))) ^ vec4<i32>(u_input.a.x, ~(-2147483648), -2147483648 >> (arg_0 % 32u), min(-13190, 2147483647)), 3929u, all(!(!vec4<bool>(arg_3.x, arg_3.x, false, true))), abs(firstTrailingBit(-29008)))));
    let var_2 = max(vec3<u32>(0u, func_5(func_4(-1), vec4<i32>(-23942, -99863, u_input.a.x, u_input.a.x), Struct_1(false, vec2<f32>(arg_2, 601.0), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), 4294967295u, vec2<f32>(var_1.x, var_1.x)), firstLeadingBit(u_input.a.x)).d << ((~arg_0 & (1u << (arg_0 % 32u))) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 29509u, 4294967295u), vec3<u32>(0u, arg_0, arg_0)), vec3<u32>(0u, arg_1, arg_1) >> (vec3<u32>(4294967295u, 4294967295u, 0u) % vec3<u32>(32u))) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(66055u, arg_1, 0u, 17564u), vec4<u32>(44526u, arg_0, 94975u, 1u) | vec4<u32>(arg_0, arg_1, arg_0, arg_0)) % 32u)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(2653u, 20230u, 92639u, arg_1), vec4<u32>(66777u, arg_0, arg_0, arg_0)), 33637u, arg_1));
    var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(step(-855.0, 339.0)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1392.0, -511.0), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, var_1.x) - vec2<f32>(arg_2, -550.0))))))))));
    var var_3 = func_5(Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, 149.0), vec2<f32>(arg_2, arg_2)))) * vec2<f32>(_wgslsmith_f_op_f32(-319.0), _wgslsmith_f_op_f32(-arg_2))), vec4<bool>(select(29017u != 0u, arg_3.x | true, true), !func_4(1).c.x, _wgslsmith_f_op_f32(var_1.x * var_1.x) >= func_5(Struct_1(arg_3.x, vec2<f32>(arg_2, var_1.x), vec4<bool>(false, false, true, true), 0u, vec2<f32>(557.0, 228.0)), vec4<i32>(u_input.a.x, -22855, -2147483648, u_input.a.x), Struct_1(true, vec2<f32>(var_1.x, arg_2), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), arg_1, vec2<f32>(-676.0, var_1.x)), 2147483647).e.x, !arg_3.x | arg_3.x), arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-465.0, -586.0) * vec2<f32>(arg_2, var_1.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1171.0, -521.0), vec2<f32>(744.0, arg_2))) - vec2<f32>(_wgslsmith_f_op_f32(689.0 + -209.0), 715.0))), ~vec4<i32>(i32(-1) * -51249, u_input.a.x, _wgslsmith_mod_i32(2147483647 << (0u % 32u), ~2147483647), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 12868), u_input.a.x ^ u_input.a.x)), func_5(func_4(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-3265, 1622), _wgslsmith_div_i32(-1, -1))), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 2147483647), select(2147483647 & u_input.a.x, u_input.a.x, false), -2147483648, 2147483647), Struct_1(arg_3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, 1133.0)))), !(!vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x)), 30555u, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2, 1257.0)))), 32176), u_input.a.x);
    return var_3.e;
}

fn func_9(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    let var_0 = u_input.a | _wgslsmith_add_vec3_i32(-(vec3<i32>(1, -1, -2147483648) >> (vec3<u32>(arg_0.d, arg_1, arg_0.d) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(~(~u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 1, 35118) << (vec3<u32>(arg_1, 4294967295u, arg_0.d) % vec3<u32>(32u)), ~u_input.a)));
    for (var var_1 = u_input.a.x; var_1 < 1; var_1 -= 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            continue;
        }
        var var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32((_wgslsmith_clamp_vec3_u32(vec3<u32>(12174u, arg_0.d, arg_1), vec3<u32>(arg_1, arg_1, 69977u), vec3<u32>(arg_1, arg_0.d, arg_0.d)) & ~vec3<u32>(arg_0.d, 16935u, 7491u)) ^ ~(~vec3<u32>(arg_1, 4294967295u, arg_0.d)), vec3<u32>(_wgslsmith_div_u32(71703u, arg_1), arg_0.d, ~arg_0.d) << ((~vec3<u32>(arg_0.d, 0u, 2404u) ^ vec3<u32>(arg_0.d, arg_0.d, 17312u)) % vec3<u32>(32u))), 45664u, abs(91365u));
        break;
    }
    for (var var_1 = -25461; var_1 <= 5293; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        loop {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            continue;
        }
    }
    var var_1 = arg_0.d;
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        let var_2 = func_4(-(~var_0.x >> (~19813u % 32u)) & u_input.a.x);
        if (!arg_0.c.x) {
            let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.e.x))), _wgslsmith_f_op_f32(func_8(func_2(Struct_1(var_2.a, vec2<f32>(-771.0, var_2.b.x), !var_2.c, arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, arg_0.e.x))), arg_0), _wgslsmith_sub_u32(~(~16150u), _wgslsmith_mult_u32(0u, func_6(Struct_1(true, vec2<f32>(219.0, -1277.0), vec4<bool>(arg_0.a, arg_0.a, arg_0.c.x, arg_0.a), 4294967295u, vec2<f32>(-229.0, -172.0)), arg_0.d, vec4<bool>(var_2.a, var_2.a, false, var_2.a)).x)), var_2.c.x, var_0.x)));
        }
        var var_3 = vec4<i32>(-1) * -(firstLeadingBit(-vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x)) >> (vec4<u32>(~arg_1, 67173u, 1u, 1u) % vec4<u32>(32u)));
    }
    return _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1, 5630u, ~select(1u, arg_1, true)), firstTrailingBit((vec3<u32>(arg_1, 4294967295u, arg_1) ^ vec3<u32>(arg_1, 0u, arg_1)) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(arg_1, arg_1, arg_1), ~vec3<u32>(arg_1, arg_1, arg_0.d))), max(firstLeadingBit(vec3<u32>(48058u, 0u, 1u) >> (vec3<u32>(0u, arg_0.d, 1u) % vec3<u32>(32u))), ~(~vec3<u32>(arg_1, 0u, 0u))) | ~(abs(vec3<u32>(arg_1, arg_0.d, arg_1)) >> (~vec3<u32>(arg_1, arg_1, 9167u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(func_9(Struct_1(0u > 552u, _wgslsmith_f_op_vec2_f32(func_1(44123u, 1u, 1430.0, vec3<bool>(true, false, true))), !vec4<bool>(true, true, true, false), ~1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-721.0, -1000.0) + vec2<f32>(-296.0, -654.0))), _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 31384u), reverseBits(91931u))), vec3<u32>(0u, _wgslsmith_mod_u32(59246u, 94356u), 0u >> ((4294967295u >> (17295u % 32u)) % 32u))) << (abs(_wgslsmith_sub_vec3_u32(vec3<u32>(select(1u, 75366u, false), _wgslsmith_add_u32(1u, 30500u), 1950u), _wgslsmith_add_vec3_u32(vec3<u32>(17303u, 4294967295u, 1u), vec3<u32>(19910u, 1u, 0u) & vec3<u32>(1u, 4294967295u, 2368u)))) % vec3<u32>(32u));
    var_0 = ~vec3<u32>(~(4294967295u << (_wgslsmith_add_u32(var_0.x, 66524u) % 32u)), ~_wgslsmith_div_u32(countOneBits(var_0.x), var_0.x), countOneBits(~(~var_0.x)));
    var var_1 = false;
    var var_2 = vec4<bool>(!(!(!(false || true))), select(true, ~var_0.x >= 1u, true), !(!func_5(Struct_1(false, vec2<f32>(-866.0, 575.0), vec4<bool>(true, false, false, false), 4294967295u, vec2<f32>(-993.0, 1674.0)), vec4<i32>(u_input.a.x, 2147483647, u_input.a.x, 18446), Struct_1(false, vec2<f32>(607.0, -1229.0), vec4<bool>(false, true, true, true), var_0.x, vec2<f32>(-678.0, -266.0)), u_input.a.x).c.x) == ((all(vec4<bool>(false, false, false, false)) | (false && true)) == !true), any(func_5(func_5(func_4(-2147483648), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), func_5(Struct_1(false, vec2<f32>(-360.0, 622.0), vec4<bool>(false, false, false, true), var_0.x, vec2<f32>(-506.0, -1000.0)), vec4<i32>(2147483647, -2147483648, 6133, u_input.a.x), Struct_1(false, vec2<f32>(-665.0, -455.0), vec4<bool>(false, false, false, false), 0u, vec2<f32>(-527.0, 1840.0)), u_input.a.x), -u_input.a.x), _wgslsmith_div_vec4_i32(max(vec4<i32>(8461, 227, u_input.a.x, -1), vec4<i32>(u_input.a.x, u_input.a.x, 1, u_input.a.x)), abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0))), func_4(u_input.a.x), 1).c));
    switch (max(u_input.a.x, u_input.a.x)) {
        case -1: {
            var var_3 = false;
            var var_4 = -func_2(Struct_1(func_4(71221).c.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(3160.0, -150.0))))), !(!vec4<bool>(false, true, var_2.x, var_2.x)), 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1777.0, 1000.0))), Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1049.0, -1151.0) + vec2<f32>(1069.0, 840.0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(606.0, -748.0))), select(vec4<bool>(true, var_2.x, var_2.x, true), func_5(Struct_1(true, vec2<f32>(-856.0, 1452.0), vec4<bool>(true, false, false, var_2.x), var_0.x, vec2<f32>(356.0, 1939.0)), vec4<i32>(0, -2147483648, u_input.a.x, u_input.a.x), Struct_1(var_2.x, vec2<f32>(-1700.0, 1445.0), vec4<bool>(var_2.x, var_2.x, true, true), 1u, vec2<f32>(-939.0, 422.0)), u_input.a.x).c, !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1393.0, 1268.0) * vec2<f32>(2453.0, 864.0))))).x;
            var_4 = (u_input.a.x & _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(u_input.a.x), -58411), vec2<i32>(-1) * -u_input.a.zz)) & -u_input.a.x;
            var var_5 = Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(func_5(Struct_1(true, vec2<f32>(-1000.0, -1720.0), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), 57305u, vec2<f32>(-457.0, 1000.0)), vec4<i32>(u_input.a.x, 2147483647, u_input.a.x, -32152), Struct_1(true, vec2<f32>(-2484.0, -445.0), vec4<bool>(var_2.x, true, true, false), 0u, vec2<f32>(501.0, 274.0)), u_input.a.x).d, func_9(Struct_1(var_2.x, vec2<f32>(1140.0, 675.0), vec4<bool>(true, true, false, var_2.x), var_0.x, vec2<f32>(249.0, -442.0)), var_0.x).x, _wgslsmith_f_op_f32(-808.0), !vec3<bool>(var_2.x, var_2.x, var_2.x)))) + vec2<f32>(-1000.0, 1266.0)), !vec4<bool>(!var_2.x, !(u_input.a.x < -20426), all(var_2.yww) || (true & var_2.x), all(select(vec2<bool>(var_2.x, var_2.x), var_2.xx, true))), var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1(~14777u, ~var_0.x, 1597.0, var_2.zyx)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -215.0)))));
        }
        default: {
            let var_3 = Struct_1(var_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(304.0, 1194.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2248.0, -1000.0))))), !func_4(u_input.a.x).c, _wgslsmith_div_u32(47368u, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(347.0, 1000.0)));
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                let var_4 = ~vec2<u32>(~(~4294967295u), 15875u);
                let var_5 = func_5(Struct_1(false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(var_3.b)), vec2<f32>(var_3.e.x, var_3.b.x))))), vec4<bool>(!any(vec2<bool>(false, var_3.a)), any(vec3<bool>(var_2.x, var_3.a, false)), var_3.b.x > _wgslsmith_div_f32(var_3.e.x, 381.0), false), _wgslsmith_mod_u32(~_wgslsmith_div_u32(38913u, var_4.x), 37641u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_3.e), vec2<f32>(-1441.0, var_3.e.x), vec2<bool>(var_2.x, var_2.x))))), _wgslsmith_mult_vec4_i32(-select(-vec4<i32>(u_input.a.x, 29079, u_input.a.x, u_input.a.x), vec4<i32>(-4629, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(var_2.x, true, var_3.a, var_2.x)), abs(vec4<i32>(_wgslsmith_clamp_i32(303, -2147483648, -6545), 2147483647, func_7(vec2<f32>(1120.0, var_3.e.x), var_3.d, var_3), ~u_input.a.x))), var_3, firstLeadingBit(func_2(var_3, var_3).x));
                var var_6 = func_2(Struct_1(!(!any(vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_5.e), var_3.b)))), !vec4<bool>(var_3.c.x, !var_3.c.x, var_2.x || true, false || var_5.c.x), _wgslsmith_dot_vec2_u32(max(var_4, vec2<u32>(1u, 1u)), ~vec2<u32>(41412u, var_4.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.e.x, var_5.e.x) + vec2<f32>(var_5.b.x, var_5.e.x)), var_3.b)) - _wgslsmith_div_vec2_f32(var_5.e, _wgslsmith_f_op_vec2_f32(var_5.e - vec2<f32>(var_5.b.x, var_5.e.x))))), var_3);
                var var_7 = u_input.a.x;
                var_2 = vec4<bool>(all(vec2<bool>(var_5.a, ~(-35413) > ~(-1))), var_3.c.x, all(func_4(min(_wgslsmith_mult_i32(-1, 0), var_6.x)).c.xww), select(any(var_5.c.xwx), var_3.a, (!false & (-612.0 < var_5.e.x)) && (!var_2.x | func_4(1).a)));
            }
            let var_4 = var_3.c.x;
            var_0 = ~vec3<u32>(24823u, abs(var_3.d), var_3.d) & firstTrailingBit(vec3<u32>(var_0.x, max(countOneBits(var_0.x), var_0.x), select(~var_3.d, ~var_3.d, select(true, var_3.a, var_2.x))));
        }
    }
    switch (_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~firstLeadingBit(vec4<i32>(-13701, 0, -2273, u_input.a.x)), -vec4<i32>(-2147483648, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, 1, u_input.a.x, u_input.a.x)), countOneBits(abs(vec4<i32>(u_input.a.x, -27245, 16758, -1))) << (vec4<u32>(6970u, ~var_0.x, func_6(Struct_1(var_2.x, vec2<f32>(-154.0, -1429.0), vec4<bool>(var_2.x, true, var_2.x, true), 0u, vec2<f32>(369.0, 1366.0)), 4294967295u, vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)).x, func_9(Struct_1(var_2.x, vec2<f32>(297.0, 341.0), vec4<bool>(var_2.x, var_2.x, var_2.x, true), var_0.x, vec2<f32>(1000.0, -1000.0)), 4294967295u).x) % vec4<u32>(32u))), _wgslsmith_div_i32(u_input.a.x, -u_input.a.x))) {
        case 10932: {
        }
        default: {
            var_0 = func_9(func_4(-select(u_input.a.x, u_input.a.x, any(vec4<bool>(var_2.x, false, true, var_2.x)))), func_6(func_4(-_wgslsmith_div_i32(u_input.a.x, 2147483647)), 2407u, vec4<bool>(false, false, true, true || true)).x);
            var var_3 = func_5(func_5(func_4(_wgslsmith_mod_i32(-2147483648, 2147483647) << (37220u % 32u)), vec4<i32>(-24192, u_input.a.x, func_2(func_4(1), func_4(-76683)).x, 2147483647), Struct_1(var_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(590.0, 1000.0))), func_4(u_input.a.x << (var_0.x % 32u)).c, 4294967295u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(812.0, -474.0) + vec2<f32>(190.0, 1481.0))))), min(-24422, ~_wgslsmith_mod_i32(-1, 25678))), max(vec4<i32>(-(u_input.a.x << (4294967295u % 32u)), u_input.a.x, ~30525, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.a.x, u_input.a.x, -u_input.a.x, max(1551, -29987)), vec4<i32>(abs(u_input.a.x), _wgslsmith_div_i32(-17326, -29447), -10674, 18844))), func_4(~(i32(-1) * -1)), func_2(func_5(Struct_1(!true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(444.0, 149.0)), !vec4<bool>(var_2.x, true, true, var_2.x), var_0.x >> (13547u % 32u), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-842.0, 766.0)))), vec4<i32>(~u_input.a.x, 20926, -4284, 2147483647 ^ u_input.a.x), func_5(Struct_1(false, vec2<f32>(1353.0, 1000.0), vec4<bool>(var_2.x, var_2.x, true, true), 4294967295u, vec2<f32>(-495.0, 113.0)), abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1)), Struct_1(true, vec2<f32>(1970.0, -1325.0), vec4<bool>(var_2.x, true, false, false), 28224u, vec2<f32>(-403.0, -243.0)), 18214), ~_wgslsmith_mod_i32(u_input.a.x, 0)), func_4(-(i32(-1) * -14650))).x);
            let var_4 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x >> (var_3.d % 32u), 1 >> (var_3.d % 32u)), u_input.a.zy), -select(abs(u_input.a.yy), select(u_input.a.xz, vec2<i32>(-1, u_input.a.x), vec2<bool>(true, true)), var_3.b.x > var_3.e.x)), u_input.a.zz << (vec2<u32>(~var_0.x, _wgslsmith_clamp_u32(4294967295u, var_3.d, var_3.d) >> (var_3.d % 32u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(select(_wgslsmith_div_vec2_i32(firstLeadingBit(u_input.a.zz), ~u_input.a.zy), firstTrailingBit(u_input.a.zz) ^ u_input.a.yz, vec2<bool>(var_2.x, var_3.b.x < var_3.b.x)), u_input.a.xy));
            var var_5 = vec4<i32>(abs(var_4.x << (func_3() % 32u)), -(~u_input.a.x) & abs(firstTrailingBit(~u_input.a.x)), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 0, u_input.a.x, u_input.a.x), vec4<i32>(0, 2147483647, var_4.x, 37934)) ^ -vec4<i32>(var_4.x, var_4.x, u_input.a.x, u_input.a.x), vec4<i32>(~(-37807), _wgslsmith_mult_i32(-28011, u_input.a.x), ~2147483647, _wgslsmith_clamp_i32(-47133, var_4.x, 8161))), abs(-2147483648));
        }
    }
    let var_3 = var_0.xz;
    for (var var_4 = -1; var_4 == -9520; ) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        break;
    }
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -1762.0))) * _wgslsmith_f_op_f32(f32(-1.0) * -2131.0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1690.0), 1880.0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-292.0))))), ~(~_wgslsmith_add_u32(var_3.x, 57524u)), var_0.x);
}

