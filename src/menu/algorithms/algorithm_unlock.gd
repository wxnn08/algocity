extends Control
class_name AlgorithmUnlock

@export var code_text_node: Control
@export var algorithm_selection_spawn_node: Control
@export var algorithm_button: PackedScene
@export var blur_rect: Control
@export var lock_texture: Control

func load_theme(theme: AlgorithmTheme) -> void:
	reset_current_theme()
	load_algorithm(null, theme.algorithms[theme.active_algorithm_index])
	_create_algorithm_selection_buttons(theme)

func _create_algorithm_selection_buttons(theme: AlgorithmTheme) -> void:
	for algorithm in theme.algorithms:
		var button = _create_algorithm_button(algorithm)
		algorithm_selection_spawn_node.add_child(button)

func _create_algorithm_button(algorithm: Algorithm) -> Control:
	var button = algorithm_button.instantiate() as CustomButton
	button.texture = algorithm.icon
	button.pressed_with_reference.connect(load_algorithm.bind(algorithm))
	return button

func reset_current_theme():
	for child in algorithm_selection_spawn_node.get_children():
		child.queue_free()

func load_algorithm(button_reference, algorithm: Algorithm):
	var blur_intensity = 0 if algorithm.is_unlocked() else 1
	set_blur_intensity(blur_intensity)
	set_lock_texture_visibility(!algorithm.is_unlocked())
	code_text_node.text = algorithm.code

func set_blur_intensity(value: float):
	blur_rect.material.set("shader_parameter/blur_intensity", value)

func set_lock_texture_visibility(value: bool):
	lock_texture.visible = value
