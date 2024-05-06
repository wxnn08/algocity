extends Resource
class_name Algorithm

@export var label: String = "Default"
@export var icon: Texture
@export var time_complexity: Enums.Complexity
@export var space_complexity: Enums.Complexity
@export var price: int
@export var status: Enums.AlgorithmStatus
@export_multiline var code: String

func is_unlocked():
	return status != Enums.AlgorithmStatus.LOCKED
