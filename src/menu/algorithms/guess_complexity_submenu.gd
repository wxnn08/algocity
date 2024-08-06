extends Control
class_name GuessComplexity

@export var time_field: LineEdit
@export var space_field: LineEdit
@export var guess_button: Button

func clear_fields():
	time_field.clear()
	space_field.clear()

func time_text() -> String:
	return time_field.text

func space_text() -> String:
	return space_field.text

func on_guess_pressed(callback: Callable) -> void:
	for conn in guess_button.get_signal_connection_list("pressed"):
		guess_button.disconnect("pressed", conn["callable"])
	guess_button.pressed.connect(callback)
