class_name StrategyMachineComponent
extends Node

@onready var machine: StrategyMachine = get_parent()


@onready var user_node:
	get:
		return get_parent().user_node

@onready var target_strategy:
	get:
		return get_parent().target_strategy
