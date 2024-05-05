@icon("icons/StrategyIcon.svg")
class_name Strategy
extends StrategyMachineComponent

## Node used to implement a specific [Strategy].
##
## Strategies are controlled by machine controllers and are initially disabled before entering the [scene_tree].

## Emited when the [Strategy] is enabled.
signal enter_strategy

## Emited when the [Strategy] is disabled.
signal exit_strategy

## Used to check if a [Strategy] is enabled or disabled.
@export var is_enabled : bool = false


## Enables the strategy and executes [code]_enter_strategy()[/code].
func enable():
	enter_strategy.emit()
	is_enabled = true
	process_mode = Node.PROCESS_MODE_INHERIT

## Disables the strategy and executes [code]_exit_strategy()[/code].
func disable():
	exit_strategy.emit()
	is_enabled = false
	process_mode = Node.PROCESS_MODE_DISABLED
	
func _notification(what):
	match what:
		NOTIFICATION_READY:
			enable() if is_enabled else disable()
