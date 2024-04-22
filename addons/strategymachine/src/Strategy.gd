@icon("icons/StrategyIcon.svg")
class_name Strategy
extends StrategyMachineComponent

var is_enabled

func _init():
	disable()

func enable():
	_enter_strategy()
	is_enabled = true
	process_mode = Node.PROCESS_MODE_INHERIT

func disable():
	_exit_strategy()
	is_enabled = false
	process_mode = Node.PROCESS_MODE_DISABLED


func _enter_strategy():
	pass

func _exit_strategy():
	pass
