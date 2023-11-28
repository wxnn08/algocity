extends Control
class_name BackgroundMenu

@export var tab_name: String
@export var tab_label_node: Control
@export var body_node: Control
@export var body_content: PackedScene


func _ready() -> void:
	if body_content != null:
		body_node.add_child(body_content.instantiate())

func update_tab_name(text: String) -> void:
	tab_label_node.text = text
