extends CharacterBody2D
var velocityy = 120

func _physics_process(delta: float) -> void:
	#going right 'ere
	velocity.x = velocityy
	move_and_slide()

func _on_end_area_body_entered(body: Node2D) -> void:
	print("Exited") # Replace with function body.


func _on_start_area_body_entered(body: Node2D) -> void:
	print("Entered")
	velocityy = 60
