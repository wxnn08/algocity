extends Control
class_name SelectMenu

@export var button_creator: PackedScene
@export var buttons_location: Container

func add_button(icon: Texture) -> void:
	var button = _create_button(icon)
	buttons_location.add_child(button)

func _create_button(icon: Texture):
	var button := button_creator.instantiate()
	button.texture = icon
	button.custom_minimum_size = Vector2(100, 100)
	return button
