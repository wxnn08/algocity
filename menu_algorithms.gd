extends Control

@export var group_icons: Array[AlgorithmGroupIcon]
@export var algorithms: Array[Algorithm]

@export var selection_button: PackedScene

func _ready() -> void:
	var group_select_container = $HBoxContainer/MarginContainer/ScrollContainer/VBoxContainer
	
	for algorithm_group in group_icons:
		var button = _create_button(algorithm_group)
		group_select_container.add_child(button)

func _create_selection_buttons(algorithms: Array[Algorithm]):
	pass

func _create_button(info: AlgorithmGroupIcon):
	var button := selection_button.instantiate()
	button.texture = info.texture
	button.custom_minimum_size = Vector2(100, 100)
	return button
