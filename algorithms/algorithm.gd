extends Resource
class_name Algorithm

const Enums = preload("res://algorithms/enums.gd")

@export var algorithm_name: String = "Default"
@export var algorithm_tag: Enums.AlgorithmTag
@export var algorithm_time_complexity: Enums.Complexity
@export var algorithm_space_complexity: Enums.Complexity
@export var algorithm_icon: Texture
@export_multiline var algorithm_code: String
