extends MachineController


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		machine.enable_strategy("rotar")
