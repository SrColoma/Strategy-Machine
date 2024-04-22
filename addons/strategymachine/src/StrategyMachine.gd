@icon("icons/StrategyMachineIcon.svg")
class_name StrategyMachine
extends Node


var target_strategy : Strategy
@onready var controllers : Dictionary = {}
@onready var strategies : Dictionary = {}

@onready var user_node: Node = get_parent()

func _ready():
	_set_strategies_and_controllers()

# apaga la estrategia actual y enciende la estrategia con nombre strategy_name
func switch_strategy_to(strategy_name:String):
	if target_strategy != null:
		target_strategy.disable()
	target_strategy = strategies[strategy_name]
	target_strategy.enable()


# habilita la estrategia con nombre strategy_name, sin afectar el resto de estrategias
func enable_strategy(strategy_name:String):
	strategies[strategy_name].enable()

# deshabilita la estrategia con nombre strategy_name, sin afectar el resto de estrategias
func disable_strategy(strategy_name:String):
	strategies[strategy_name].disable()


# habilita o desabilita una estrategia especifica
func toggle_strategy(strategy_name:String):
	if strategies[strategy_name].is_enabled:
		strategies[strategy_name].disable()
	else:
		strategies[strategy_name].enable()


# Obtiene los hijos y los guarda en un diccionario "strategies"
func _set_strategies_and_controllers():
	for child in get_children():
		if child is Strategy:
			strategies[child.name] = child
		elif child is MachineController:
			controllers[child.name] = child

