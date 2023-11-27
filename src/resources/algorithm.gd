extends Resource
class_name Algorithm

@export var label: String = "Default"
@export var icon: Texture
@export var tag: Enums.AlgorithmTag
@export var time_complexity: Enums.Complexity
@export var space_complexity: Enums.Complexity
@export var price: int
@export_multiline var code: String
