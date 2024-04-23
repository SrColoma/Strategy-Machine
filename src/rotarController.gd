extends MachineController


func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		machine.enable_strategy("rotar")
