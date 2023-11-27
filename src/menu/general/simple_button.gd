extends Control
class_name SimpleButton
signal pressed_with_reference(reference)

@export var texture: Texture
@export var icon_node: Control

func _ready() -> void:
	icon_node.texture = texture

func _on_texture_button_pressed() -> void:
	pressed_with_reference.emit(self)
