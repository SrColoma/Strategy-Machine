@icon("icons/StrategyIcon.svg")
class_name Strategy
extends StrategyMachineComponent

## Node used to implement a specific [Strategy].
##
## Strategies are controlled by machine controllers and are initially disabled before entering the [scene_tree].
## It is recommended to override [code]_enter_strategy()[/code] and [code]_exit_strategy()[/code].

## Used to check if a [Strategy] is enabled or disabled.
var is_enabled

func _init():
	disable()

## Enables the strategy and executes [code]_enter_strategy()[/code].
func enable():
	_enter_strategy()
	is_enabled = true
	process_mode = Node.PROCESS_MODE_INHERIT

## Disables the strategy and executes [code]_exit_strategy()[/code].
func disable():
	_exit_strategy()
	is_enabled = false
	process_mode = Node.PROCESS_MODE_DISABLED

## Executed when the [Strategy] is enabled.
## This method should be overridden.
func _enter_strategy():
	pass

## Executed when the [Strategy] is disabled.
## This method should be overridden.
func _exit_strategy():
	pass
