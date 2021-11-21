shader_type spatial;
render_mode specular_schlick_ggx;

uniform sampler2D tex_frg_8 : hint_albedo;
uniform sampler2D tex_frg_9 : hint_albedo;
uniform sampler2D tex_frg_14;
uniform sampler2D tex_frg_18 : hint_albedo;
uniform sampler2D tex_frg_21;
uniform sampler2D tex_frg_24 : hint_albedo;
uniform sampler2D tex_frg_25;
uniform sampler2D tex_frg_37;
uniform sampler2D tex_frg_39;
uniform sampler2D tex_frg_40;
uniform sampler2D tex_frg_42;
uniform sampler2D tex_frg_46;
uniform sampler2D tex_frg_50;
uniform sampler2D tex_frg_51;
uniform sampler2D tex_frg_31 : hint_normal;
uniform sampler2D tex_frg_32 : hint_normal;
uniform sampler2D tex_frg_33 : hint_normal;
uniform sampler2D tex_frg_35 : hint_normal;



void vertex() {
// Output:0

}

void fragment() {
// Input:15
	vec3 n_out15p0 = vec3(UV, 0.0);

// VectorOp:11
	vec3 n_in11p1 = vec3(30.00000, 30.00000, 0.00000);
	vec3 n_out11p0 = n_out15p0 * n_in11p1;

// Texture:8
	vec4 tex_frg_8_read = texture(tex_frg_8, n_out11p0.xy);
	vec3 n_out8p0 = tex_frg_8_read.rgb;
	float n_out8p1 = tex_frg_8_read.a;

// VectorOp:12
	vec3 n_in12p1 = vec3(30.00000, 30.00000, 0.00000);
	vec3 n_out12p0 = n_out15p0 * n_in12p1;

// Texture:9
	vec4 tex_frg_9_read = texture(tex_frg_9, n_out12p0.xy);
	vec3 n_out9p0 = tex_frg_9_read.rgb;
	float n_out9p1 = tex_frg_9_read.a;

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

// Texture:14
	vec4 tex_frg_14_read = texture(tex_frg_14, vec3(n_out6p0).xy);
	vec3 n_out14p0 = tex_frg_14_read.rgb;
	float n_out14p1 = tex_frg_14_read.a;

// VectorMix:13
	vec3 n_out13p0 = mix(n_out8p0, n_out9p0, n_out14p0);

// VectorOp:20
	vec3 n_in20p1 = vec3(30.00000, 30.00000, 0.00000);
	vec3 n_out20p0 = n_out15p0 * n_in20p1;

// Texture:18
	vec4 tex_frg_18_read = texture(tex_frg_18, n_out20p0.xy);
	vec3 n_out18p0 = tex_frg_18_read.rgb;
	float n_out18p1 = tex_frg_18_read.a;

// Texture:21
	vec4 tex_frg_21_read = texture(tex_frg_21, vec3(n_out6p0).xy);
	vec3 n_out21p0 = tex_frg_21_read.rgb;
	float n_out21p1 = tex_frg_21_read.a;

// VectorMix:17
	vec3 n_out17p0 = mix(n_out13p0, n_out18p0, n_out21p0);

// VectorOp:23
	vec3 n_in23p1 = vec3(30.00000, 30.00000, 0.00000);
	vec3 n_out23p0 = n_out15p0 * n_in23p1;

// Texture:24
	vec4 tex_frg_24_read = texture(tex_frg_24, n_out23p0.xy);
	vec3 n_out24p0 = tex_frg_24_read.rgb;
	float n_out24p1 = tex_frg_24_read.a;

// Texture:25
	vec4 tex_frg_25_read = texture(tex_frg_25, vec3(n_out6p0).xy);
	vec3 n_out25p0 = tex_frg_25_read.rgb;
	float n_out25p1 = tex_frg_25_read.a;

// VectorMix:26
	vec3 n_out26p0 = mix(n_out17p0, n_out24p0, n_out25p0);

// Scalar:44
	float n_out44p0 = 0.000000;

// Texture:37
	vec4 tex_frg_37_read = texture(tex_frg_37, n_out11p0.xy);
	vec3 n_out37p0 = tex_frg_37_read.rgb;
	float n_out37p1 = tex_frg_37_read.a;

// Texture:39
	vec4 tex_frg_39_read = texture(tex_frg_39, n_out12p0.xy);
	vec3 n_out39p0 = tex_frg_39_read.rgb;
	float n_out39p1 = tex_frg_39_read.a;

// VectorMix:38
	vec3 n_out38p0 = mix(n_out37p0, n_out39p0, n_out14p0);

// Texture:40
	vec4 tex_frg_40_read = texture(tex_frg_40, n_out20p0.xy);
	vec3 n_out40p0 = tex_frg_40_read.rgb;
	float n_out40p1 = tex_frg_40_read.a;

// VectorMix:41
	vec3 n_out41p0 = mix(n_out38p0, n_out40p0, n_out21p0);

// Texture:42
	vec4 tex_frg_42_read = texture(tex_frg_42, n_out23p0.xy);
	vec3 n_out42p0 = tex_frg_42_read.rgb;
	float n_out42p1 = tex_frg_42_read.a;

// VectorMix:43
	vec3 n_out43p0 = mix(n_out41p0, n_out42p0, n_out25p0);

// Scalar:45
	float n_out45p0 = 0.100000;

// Texture:46
	vec4 tex_frg_46_read = texture(tex_frg_46, n_out11p0.xy);
	vec3 n_out46p0 = tex_frg_46_read.rgb;
	float n_out46p1 = tex_frg_46_read.a;

// Texture:50
	vec4 tex_frg_50_read = texture(tex_frg_50, n_out12p0.xy);
	vec3 n_out50p0 = tex_frg_50_read.rgb;
	float n_out50p1 = tex_frg_50_read.a;

// VectorMix:47
	vec3 n_out47p0 = mix(n_out46p0, n_out50p0, n_out14p0);

// Texture:51
	vec4 tex_frg_51_read = texture(tex_frg_51, n_out20p0.xy);
	vec3 n_out51p0 = tex_frg_51_read.rgb;
	float n_out51p1 = tex_frg_51_read.a;

// VectorMix:49
	vec3 n_out49p0 = mix(n_out47p0, n_out51p0, n_out21p0);

// VectorMix:48
	vec3 n_in48p1 = vec3(1.20000, 1.20000, 1.20000);
	vec3 n_out48p0 = mix(n_out49p0, n_in48p1, n_out25p0);

// Texture:31
	vec4 tex_frg_31_read = texture(tex_frg_31, n_out11p0.xy);
	vec3 n_out31p0 = tex_frg_31_read.rgb;
	float n_out31p1 = tex_frg_31_read.a;

// Texture:32
	vec4 tex_frg_32_read = texture(tex_frg_32, n_out12p0.xy);
	vec3 n_out32p0 = tex_frg_32_read.rgb;
	float n_out32p1 = tex_frg_32_read.a;

// VectorMix:30
	vec3 n_out30p0 = mix(n_out31p0, n_out32p0, n_out14p0);

// Texture:33
	vec4 tex_frg_33_read = texture(tex_frg_33, n_out20p0.xy);
	vec3 n_out33p0 = tex_frg_33_read.rgb;
	float n_out33p1 = tex_frg_33_read.a;

// VectorMix:34
	vec3 n_out34p0 = mix(n_out30p0, n_out33p0, n_out21p0);

// Texture:35
	vec4 tex_frg_35_read = texture(tex_frg_35, n_out23p0.xy);
	vec3 n_out35p0 = tex_frg_35_read.rgb;
	float n_out35p1 = tex_frg_35_read.a;

// VectorMix:36
	vec3 n_out36p0 = mix(n_out34p0, n_out35p0, n_out25p0);

// Output:0
	ALBEDO = n_out26p0;
	METALLIC = n_out44p0;
	ROUGHNESS = dot(n_out43p0, vec3(0.333333, 0.333333, 0.333333));
	SPECULAR = n_out45p0;
	AO = dot(n_out48p0, vec3(0.333333, 0.333333, 0.333333));
	NORMALMAP = n_out36p0;
	AO_LIGHT_AFFECT = dot(n_out48p0, vec3(0.333333, 0.333333, 0.333333));

}

void light() {
// Output:0

}
