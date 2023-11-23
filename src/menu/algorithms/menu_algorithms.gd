extends Control

@export var algorithm_groups : Array[AlgorithmGroup]
@export var algorithms : Array[Algorithm]

@export var select_menu: SelectMenu
@export var background_menu: BackgroundMenu

func _ready() -> void:
	for group in algorithm_groups:
		var group_id = _get_id_by_group(group)
		select_menu.add_button(group_id, group.icon)

func _on_select_menu_pressed(id: int) -> void:
	_update_body_using_group_id(algorithm_groups, id)

func _update_body_using_group_id(groups: Array[AlgorithmGroup], id: int) -> void:
	var group = _get_group_by_id(groups, id)
	_update_menu_tab_text(group.label)

func _update_menu_tab_text(text: String) -> void:
	background_menu.update_tab_name(text)
	
func _get_id_by_group(group: AlgorithmGroup) -> int:
	return group.tag

func _get_group_by_id(groups: Array[AlgorithmGroup], id: int) -> AlgorithmGroup:
	for group in groups:
		if group.tag == id:
			return group
	return null
