extends Node

enum Complexity {
	CONSTANT,
	N,
	N_2,
	N_3,
	N_LOG_N,
	N_PLUS_M
}

enum AlgorithmTag {
	SORT,
	FIND
}

enum RoutineTag {
	BEGIN,
	END
}

enum AlgorithmStatus {
	LOCKED,
	UNLOCKED_UNAVAILABLE,
	UNLOCKED_AVAILABLE,
	ACTIVE
}
