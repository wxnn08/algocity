extends Control
class_name SimpleButton

@export var texture: Texture
@export var icon_node: Control

func _ready() -> void:
	icon_node.texture = texture
