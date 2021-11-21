shader_type spatial;
render_mode specular_schlick_ggx;

uniform sampler2D tex_frg_7;



void vertex() {
// Output:0

}

void fragment() {
// Input:2
	mat4 n_out2p0 = CAMERA_MATRIX;

// Input:3
	vec3 n_out3p0 = VERTEX;

// TransformVectorMult:4
	vec3 n_out4p0 = (n_out2p0 * vec4(n_out3p0, 1.0)).xyz;

// VectorDecompose:5
	float n_out5p0 = n_out4p0.x;
	float n_out5p1 = n_out4p0.y;
	float n_out5p2 = n_out4p0.z;

// ScalarOp:6
	float n_in6p1 = 200.00000;
	float n_out6p0 = n_out5p1 / n_in6p1;

// Texture:7
	vec4 tex_frg_7_read = texture(tex_frg_7, vec3(n_out6p0).xy);
	vec3 n_out7p0 = tex_frg_7_read.rgb;
	float n_out7p1 = tex_frg_7_read.a;

// Output:0
	ALBEDO = n_out7p0;

}

void light() {
// Output:0

}
