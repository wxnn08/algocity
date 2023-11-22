extends Control

@export var group_icons: Array[AlgorithmGroupIcon]
@export var algorithms: Array[Algorithm]

@export var select_menu: SelectMenu
@export var background_menu: BackgroundMenu
@export var selection_button: PackedScene

func _ready() -> void:
	print(group_icons)
	for algorithm_group in group_icons:
		select_menu.add_button()
