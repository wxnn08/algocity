extends Control
class_name CustomButton
signal pressed_with_reference(reference)

@export var texture: Texture
@export var icon_node: Control
@export var algorithm: Algorithm

func _ready() -> void:
	icon_node.texture = texture
	
func _on_texture_button_pressed() -> void:
	pressed_with_reference.emit(self)

func set_scale_factor(factor: float) -> void:
	scale = Vector2(factor, factor)
