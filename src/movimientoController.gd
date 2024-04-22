extends MachineController


## Called when the node enters the scene tree for the first time.
#func _ready():
	#machine.switch_strategy_to("mover_der")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		machine.switch_strategy_to("mover_der")
	if Input.is_action_pressed("ui_left"):
		machine.switch_strategy_to("mover_iz")
	
	if Input.is_action_pressed("ui_cancel"):
		machine.enable_strategy("mover_der")
		machine.enable_strategy("mover_iz")
