extends Control
class_name MenuGroupButton

signal on_click

@export var texture: Texture
@export var icon_node: Control

func _ready() -> void:
	icon_node.texture = texture
