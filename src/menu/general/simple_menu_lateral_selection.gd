extends Control
class_name SelectMenu
signal pressed(id: int)

@export var button_creator: PackedScene
@export var buttons_location: Container

var button_id: Dictionary

func add_button(id:int, icon: Texture) -> void:
	var button = _create_button(icon)
	button_id[button] = id
	buttons_location.add_child(button)


func _create_button(icon: Texture):
	var button := button_creator.instantiate() as CustomButton
	button.texture = icon
	button.custom_minimum_size = Vector2(100, 100)
	button.pressed_with_reference.connect(_on_child_button_pressed)
	return button

func _on_child_button_pressed(button_reference) -> void:
	var id = button_id[button_reference]
	pressed.emit(id)
