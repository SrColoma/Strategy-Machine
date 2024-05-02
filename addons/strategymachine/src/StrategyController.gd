@icon("icons/MachineControllerIcon.svg")
class_name StrategyController
extends StrategyMachineComponent

## A node used to define the logic in which [Strategy] nodes will behave.
##
## Primarily, this node serves as a bridge to define the logic of the [StrategyMachine] 
## and to split the controllers into different files. [br]
## In this node, the behavior of [Strategy] changes must be defined. [br]
## You can use more than one [MachineController] per [StrategyMachine]. [br]

## Turns off the current [Strategy] and switches to the strategy with the name [code]strategy_name[/code].
## This function simplifies the use of the machine by abstracting access to the machine first.
func switch_strategy_to(strategy_name: String):
	machine.switch_strategy_to(strategy_name)


## Enables the [Strategy] with the name [code]strategy_name[/code], without affecting the rest of the strategies.
## This function simplifies the use of the machine by abstracting access to the machine first.
func enable_strategy(strategy_name: String):
	machine.enable_strategy(strategy_name)


## Disables the [Strategy] with the name [code]strategy_name[/code], without affecting the rest of the strategies.
## This function simplifies the use of the machine by abstracting access to the machine first.
func disable_strategy(strategy_name: String):
	machine.disable_strategy(strategy_name)


## Enables or disables a specific [Strategy].
## This function simplifies the use of the machine by abstracting access to the machine first.
func toggle_strategy(strategy_name: String):
	machine.toggle_strategy(strategy_name)
