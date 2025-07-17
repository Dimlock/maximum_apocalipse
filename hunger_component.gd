extends Node

signal realy_starved

var _value: int = 1:
	set(value):
		_value = clampi(value, 1, 6)
		if _value == 6:
			realy_starved.emit()

func starve(value = 1):
	_value += value

func eat(value = 1):
	_value -= value
