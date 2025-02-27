extends Sprite2D

var page = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("botrow") or Input.is_action_just_pressed("midrow") or Input.is_action_just_pressed("toprow") or Input.is_action_just_pressed("strum"):
		print(page)
		if page <4:
			print(page)
			if page == 1:
				$/root/Node2D/helpsprite.texture = load("res://Assets/Jpegs/Menu and Help/Help/Help2.png")
				page = 2
			elif page == 2:
				$/root/Node2D/helpsprite.texture = load("res://Assets/Jpegs/Menu and Help/Help/Help3.png")
				page = 4
		else:
			get_tree().change_scene_to_file("res://01/menu.tscn")
