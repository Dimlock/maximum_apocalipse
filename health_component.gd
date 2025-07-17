extends Node

signal died

var _current_health: int:
	set(value):
		_current_health = clampi(value, 0, starting_health)
		print(_current_health)
		if _current_health == 0:
			died.emit()

@export var starting_health: int:
	set(value):
		starting_health = value
		print(starting_health)
		_current_health = starting_health

func damage(value: int = 1):
	_current_health -= value
	
func heal(value: int = 1):
	_current_health += value
