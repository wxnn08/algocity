extends Resource
class_name Algorithm

@export var label: String = "Default"
@export var icon: Texture
@export var time_complexity: String
@export var space_complexity: String
@export var price: int
@export var status: Enums.AlgorithmStatus
@export_multiline var code: String

func is_locked():
	return status == Enums.AlgorithmStatus.LOCKED

func is_guessable():
	return status == Enums.AlgorithmStatus.UNLOCKED_UNAVAILABLE

func unlock():
	status = Enums.AlgorithmStatus.UNLOCKED_UNAVAILABLE
	
func guessed():
	status = Enums.AlgorithmStatus.UNLOCKED_AVAILABLE
