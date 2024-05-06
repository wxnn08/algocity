extends Resource
class_name AlgorithmTheme

@export var label: String = "Default"
@export var theme: Enums.AlgorithmTag
@export var icon: Texture
@export var algorithms: Array[Algorithm]
@export var active_algorithm_index: int
