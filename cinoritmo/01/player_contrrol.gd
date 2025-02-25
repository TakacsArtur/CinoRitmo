extends CharacterBody2D

func _physics_process(delta: float) -> void:
	#going right 'ere
	velocity.x = 90
	move_and_slide()
