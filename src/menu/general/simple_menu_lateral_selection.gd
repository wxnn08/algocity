extends Control
class_name SelectMenu

@export var button_creator: PackedScene
@export var buttons_location: Container

var button_id: Dictionary = {}
var _current_id: int = 0

func add_button(icon: Texture) -> void:
	var button = _create_button(icon)
	button_id[button] = _current_id
	_current_id += 1
	buttons_location.add_child(button)


func _create_button(icon: Texture):
	var button := button_creator.instantiate() as SimpleButton
	button.texture = icon
	button.custom_minimum_size = Vector2(100, 100)
	return button
