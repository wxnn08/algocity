extends Control

@export var group_name: String
@export var algorithm_name: String
@export var icon: Texture
@export var time_complexity: String
@export var space_complexity: String

@export var group_name_node: Label
@export var algorithm_name_node: Label
@export var icon_node: TextureRect
@export var time_complexity_node: Label
@export var space_complexity_node: Label

func _ready() -> void:
	group_name_node.text = group_name
	algorithm_name_node.text = algorithm_name
	icon_node.texture = icon
	time_complexity_node.text = time_complexity
	space_complexity_node.text = space_complexity
