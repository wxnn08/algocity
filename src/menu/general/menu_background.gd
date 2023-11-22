extends Control
class_name BackgroundMenu

@export var tab_name: String

func _ready() -> void:
	pass

func update_tab_name(text: String) -> void:
	var label = $MarginContainer/VBoxContainer/Header/MarginContainer/Label
	label.text = text
