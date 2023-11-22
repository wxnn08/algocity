extends Control

@export var routine_group_icons : Array[RoutineGroupIcon]
@export var routines : Array[Routine]

@export var select_menu: SelectMenu
@export var background_menu: BackgroundMenu

func _ready() -> void:
	for group_icon in routine_group_icons:
		select_menu.add_button(group_icon.texture)
 
