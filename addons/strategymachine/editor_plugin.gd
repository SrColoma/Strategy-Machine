@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type(
		"StrategyMachine",
		"Node",
		preload("src/StrategyMachine.gd"),
		preload("icons/StrategyMachineIcon.svg")
	)
	add_custom_type(
		"StrategyController",
		"Node",
		preload("src/StrategyController.gd"),
		preload("icons/StrategyControllerIcon.svg")
	)
	add_custom_type(
		"Strategy",
		"Node",
		preload("src/Strategy.gd"),
		preload("icons/StrategyIcon.svg")
	)


func _exit_tree():
	remove_custom_type("StrategyMachine")
	remove_custom_type("StrategyController")
	remove_custom_type("Strategy")
