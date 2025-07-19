class_name IntegerRatio

var numerator: int
var denominator: int

func _init(num: int, den: int):
	numerator = num
	denominator = den

func to_float() -> float:
	return float(numerator) / denominator

func _to_string() -> String:
	return str(numerator) + "/" + str(denominator)
