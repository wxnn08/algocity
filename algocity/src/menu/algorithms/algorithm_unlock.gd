extends Control
class_name AlgorithmUnlock

@export var code_text_node: Control
@export var algorithm_selection_spawn_node: Control

func load_theme(theme: AlgorithmTheme) -> void:
	var last_owned_algorithm = _get_last_owned_algorithm(theme)
	code_text_node.text = last_owned_algorithm.code
	_create_algorithm_selection_buttons(theme)

func _get_last_owned_algorithm(theme: AlgorithmTheme) -> Algorithm:
	return theme.algorithms[0]

func _create_algorithm_selection_buttons(theme: AlgorithmTheme) -> void:
	for algorithm in theme.algorithms:
		print(algorithm)
