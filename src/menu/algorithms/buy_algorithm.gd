extends Control
class_name BuyAlgorithm

@export var buy_button: Button

func button_value(value: int):
	buy_button.text = "$ " + str(value)

func on_unlock_pressed(callback: Callable):
	for conn in buy_button.get_signal_connection_list("pressed"):
		buy_button.disconnect("pressed", conn["callable"])
	buy_button.pressed.connect(callback)
