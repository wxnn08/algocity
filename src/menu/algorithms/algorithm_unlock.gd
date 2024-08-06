extends Control
class_name AlgorithmUnlock

@export var code_text_node: Control
@export var algorithm_selection_spawn_node: Control
@export var algorithm_button: PackedScene
@export var blur_rect: Control
@export var lock_texture: Control
@export var buy_menu: BuyAlgorithm
@export var guess_menu: GuessComplexity

func load_theme(theme: AlgorithmTheme) -> void:
	reset_current_theme()
	_create_algorithm_selection_buttons(theme)
	load_algorithm(null, theme.algorithms[theme.active_algorithm_index])

func _create_algorithm_selection_buttons(theme: AlgorithmTheme) -> void:
	for algorithm in theme.algorithms:
		var button = _create_algorithm_button(algorithm)
		algorithm_selection_spawn_node.add_child(button)

func _create_algorithm_button(algorithm: Algorithm) -> Control:
	var button = algorithm_button.instantiate() as CustomButton
	button.texture = algorithm.icon
	button.pressed_with_reference.connect(load_algorithm.bind(algorithm))
	button.algorithm = algorithm
	return button

func reset_current_theme():
	while algorithm_selection_spawn_node.get_child_count() > 0:
		var child = algorithm_selection_spawn_node.get_child(0)
		child.queue_free()
		algorithm_selection_spawn_node.remove_child(child)

func load_algorithm(button_reference, algorithm: Algorithm):
	update_code_area(algorithm)
	update_unlock_menu(algorithm)
	update_guess_menu(algorithm)
	update_buttons_scale(algorithm)

func update_buttons_scale(algorithm: Algorithm) -> void:
	for button in algorithm_selection_spawn_node.get_children():
		button.set_scale_factor(0.8)
		if button.algorithm == algorithm:
			button.set_scale_factor(1)

func set_blur_intensity(value: float):
	blur_rect.material.set("shader_parameter/blur_intensity", value)

func set_lock_texture_visibility(value: bool):
	lock_texture.visible = value

func update_code_area(algorithm: Algorithm):
	var blur_intensity = 1 if algorithm.is_locked() else 0
	set_blur_intensity(blur_intensity)
	set_lock_texture_visibility(algorithm.is_locked())
	code_text_node.text = algorithm.code

func update_unlock_menu(algorithm: Algorithm):
	if(algorithm == null or !algorithm.is_locked()):
		buy_menu.hide()
		return
	buy_menu.show()
	buy_menu.button_value(algorithm.price)
	buy_menu.on_unlock_pressed(unlock_button_pressed.bind(algorithm))
	
func unlock_button_pressed(algorithm: Algorithm):
	if(can_buy_algorithm(PlayerVariables.money, algorithm)):
		PlayerVariables.money -= algorithm.price
		algorithm.unlock()
		load_algorithm(null, algorithm)
	else:
		print("Not enough money!")
		print("Current money: ", PlayerVariables.money)

func can_buy_algorithm(player_money: int, algorithm: Algorithm) -> bool:
	return PlayerVariables.money >= algorithm.price

func update_guess_menu(algorithm: Algorithm):
	if algorithm == null or !algorithm.is_guessable():
		guess_menu.hide()
		return
	guess_menu.on_guess_pressed(guess_button_pressed.bind(algorithm))
	guess_menu.clear_fields()
	guess_menu.show()

func guess_button_pressed(algorithm: Algorithm):
	var time_text = guess_menu.time_text()
	var space_text = guess_menu.space_text()
	if is_right_guess(algorithm, time_text, space_text):
		algorithm.guessed()
		load_algorithm(null, algorithm)

func is_right_guess(algorithm: Algorithm, time: String, space: String) -> bool:
	return algorithm.time_complexity == time && algorithm.space_complexity == space
