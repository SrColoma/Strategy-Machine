class_name StrategyMachineComponent
extends Node

## Parent node of [MachineController] and [Strategy].
##
## Abstracts the usage of [StrategyMachine].

## Reference to its [StrategyMachine].
@onready var machine: StrategyMachine = get_parent()

## Direct reference to the user_node of [StrategyMachine].
@onready var user_node:
	get:
		return get_parent().user_node

## Direct reference to the target_strategy of [StrategyMachine].
@onready var target_strategy:
	get:
		return get_parent().target_strategy
