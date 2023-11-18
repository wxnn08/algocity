class_name Algorithm

enum AlgorithmTag {
	SORT,
	FIND
}

enum Complexity {
	CONSTANT,
	N,
	N_2,
	N_3,
	N_LOG_N,
	N_PLUS_M
}

@export var algorithm_name: String = "Default"
@export var algorithm_tag: AlgorithmTag
@export var algorithm_time_complexity: Complexity
@export var algorithm_space_complexity: Complexity
@export var algorithm_icon: Image
@export var algorithm_code: CodeEdit
