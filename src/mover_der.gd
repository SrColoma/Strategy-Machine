extends Strategy


func _process(_delta):
	if Input.is_action_pressed("ui_down"):
		user_node.position += Vector2.RIGHT * 20
