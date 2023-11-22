extends Control

@export var algorithm_group_icons : Array[AlgorithmGroupIcon]
@export var algorithms : Array[Algorithm]

@export var select_menu: SelectMenu
@export var background_menu: BackgroundMenu

func _ready() -> void:
	for group_icon in algorithm_group_icons:
		select_menu.add_button(group_icon.texture)
