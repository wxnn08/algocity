extends Control

@export var routine_groups : Array[RoutineGroup]
@export var routines : Array[Routine]

@export var select_menu: SelectMenu
@export var background_menu: BackgroundMenu

func _ready() -> void:
	for group in routine_groups:
		var group_id = _get_id_by_group(group)
		select_menu.add_button(group_id, group.icon)

func _on_menu_select_pressed(id: int) -> void:
	_update_body_using_group_id(routine_groups, id)

func _update_body_using_group_id(groups: Array[RoutineGroup], id: int) -> void:
	var group = _get_group_by_id(groups, id)
	_update_menu_tab_text(group.label)

func _update_menu_tab_text(text: String) -> void:
	background_menu.update_tab_name(text)

func _get_id_by_group(group: RoutineGroup) -> int:
	return group.tag

func _get_group_by_id(groups: Array[RoutineGroup], id: int) -> RoutineGroup:
	for group in groups:
		if group.tag == id:
			return group
	return null
