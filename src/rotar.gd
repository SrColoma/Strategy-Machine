extends Strategy


func _process(_delta):
	if Input.is_action_pressed("ui_down"):
		var user_node2d = user_node as Node2D
		user_node2d.rotate(1)
