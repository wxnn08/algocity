extends Control

@export var algorithm_groups : Array[AlgorithmGroup]
@export var algorithms : Array[Algorithm]

@export var select_menu: SelectMenu
@export var background_menu: BackgroundMenu

func _ready() -> void:
	for group in algorithm_groups:
		var group_id = _get_group_id(group)
		select_menu.add_button(group_id, group.icon)

func _on_select_menu_pressed(id: int) -> void:
	print(id)

func _get_group_id(group: AlgorithmGroup) -> int:
	return group.tag
