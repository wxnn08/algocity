extends Control

@export var algorithm_themes : Array[AlgorithmTheme]
@export var select_menu: SelectMenu
@export var background_menu: BackgroundMenu

func _ready() -> void:
	for theme in algorithm_themes:
		var theme_id = _get_group_id(theme)
		select_menu.add_button(theme_id, theme.icon)

func _on_select_menu_pressed(id: String) -> void:
	_update_body_using_group_id(algorithm_themes, id)

func _update_body_using_group_id(themes: Array[AlgorithmTheme], id: String) -> void:
	var theme = _get_group_by_id(themes, id)
	_update_menu_tab_text(theme.label)
	_update_body_content(theme)

func _update_menu_tab_text(text: String) -> void:
	background_menu.update_tab_name(text)

func _update_body_content(theme: AlgorithmTheme) -> void:
	var algorithm_unlock = background_menu.body_content
	#algorithm_unlock.load_theme(theme)

func _get_group_id(theme: AlgorithmTheme) -> String:
	return str(Enums.AlgorithmTag.keys()[theme.theme])

func _get_group_by_id(themes: Array[AlgorithmTheme], id: String) -> AlgorithmTheme:
	for theme in themes:
		if _get_group_id(theme) == id:
			return theme
	return null
	
func _get_id_by_algorithm(algorithm: Algorithm) -> String:
	return algorithm.label.sha256_text()

func _get_algorithm_by_id(algorithms: Array[Algorithm], id: String) -> Algorithm:
	for algorithm in algorithms:
		if _get_id_by_algorithm(algorithm) == id:
			return algorithm
	return null
