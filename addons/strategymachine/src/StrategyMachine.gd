@icon("icons/StrategyMachineIcon.svg")
class_name StrategyMachine
extends Node

## A node used to establish a [StrategyMachine].
##
## The parent node of this node can be used by all strategies and controllers as [code]user_node[/code]. [br]
## All strategy and machine controller nodes must be direct children of the [StrategyMachine]. [br]
## Each [Strategy] requires a unique [code]name[/code]. [br]


## The [StrategyMachine] has a [b]target_strategy[/b] which it will track, 
## and it is changed using the [code]switch_strategy_to()[/code] method.
var target_strategy : Strategy

## Dictionary of all child nodes of [StrategyMachine] that are of type [MachineController].
@onready var controllers : Dictionary = {}

## Dictionary of all child nodes of [StrategyMachine] that are of type [Strategy].
@onready var strategies : Dictionary = {}

## Parent node of [StrategyMachine] accessible by any [Strategy] or [MachineController].
@onready var user_node: Node = get_parent()


## Switches off the current [target_strategy] and switches on the strategy with the name [code]strategy_name[/code]
func switch_strategy_to(strategy_name:String):
	if target_strategy != null:
		target_strategy.disable()
	target_strategy = strategies[strategy_name]
	target_strategy.enable()


## Enables the strategy with the name [code]strategy_name[/code], without affecting the rest of the [strategies]
func enable_strategy(strategy_name:String):
	strategies[strategy_name].enable()


## Disables the strategy with the name [code]strategy_name[/code], without affecting the rest of the [strategies]
func disable_strategy(strategy_name:String):
	strategies[strategy_name].disable()


## Enables or disables a specific [Strategy]
func toggle_strategy(strategy_name:String):
	if strategies[strategy_name].is_enabled:
		strategies[strategy_name].disable()
	else:
		strategies[strategy_name].enable()


## Obtains the children and saves them in a dictionary called [strategies]
func _set_strategies_and_controllers():
	for child in get_children():
		if child is Strategy:
			strategies[child.name] = child
			if child.is_enabled:
				target_strategy = child
		elif child is StrategyController:
			controllers[child.name] = child

func _notification(what):
	match what:
		NOTIFICATION_READY:
			_set_strategies_and_controllers()
