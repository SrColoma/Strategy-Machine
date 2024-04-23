extends MachineController


func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		machine.switch_strategy_to("mover_der")
	if Input.is_action_pressed("ui_left"):
		machine.switch_strategy_to("mover_iz")
	
	if Input.is_action_pressed("ui_cancel"):
		machine.enable_strategy("mover_der")
		machine.enable_strategy("mover_iz")
