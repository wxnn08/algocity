extends Control

@export var routine_groups : Array[RoutineGroup]
@export var routines : Array[Routine]

@export var select_menu: SelectMenu
@export var background_menu: BackgroundMenu

func _ready() -> void:
	for group in routine_groups:
		var group_id = _get_group_id(group)
		select_menu.add_button(group_id, group.icon)

func _on_menu_select_pressed(id) -> void:
		print(id)

func _get_group_id(group: RoutineGroup) -> int:
	return group.tag

