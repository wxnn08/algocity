extends Control
class_name AlgorithmUnlock

@export var code_text_node: Control
@export var algorithm_selection_spawn_node: Control
@export var algorithm_button: PackedScene

func load_theme(theme: AlgorithmTheme) -> void:
	reset_current_theme()
	var last_owned_algorithm = _get_last_owned_algorithm(theme)
	load_algorithm(null, last_owned_algorithm)
	_create_algorithm_selection_buttons(theme)

func _get_last_owned_algorithm(theme: AlgorithmTheme) -> Algorithm:
	#TODO
	return theme.algorithms[0]

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

func load_algorithm(button_reference, algorithm):
	#TODO: apply other effects
	code_text_node.text = algorithm.code
