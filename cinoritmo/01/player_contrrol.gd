extends CharacterBody2D

func _physics_process(delta: float) -> void:
	#going right 'ere
	velocity.x = 90
	move_and_slide()

func _on_end_area_body_entered(body: Node2D) -> void:
	print("Exited") # Replace with function body.


func _on_start_area_body_entered(body: Node2D) -> void:
	print("Entered")
