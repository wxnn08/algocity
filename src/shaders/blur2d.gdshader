shader_type canvas_item;

uniform float blur_intensity : hint_range(0.0, 1);
uniform sampler2D screen_texture: hint_screen_texture, filter_linear_mipmap;

void fragment() {
	vec2 uv = SCREEN_UV;
	vec4 color = textureLod(screen_texture, uv, blur_intensity*2.);
	COLOR = color;
}