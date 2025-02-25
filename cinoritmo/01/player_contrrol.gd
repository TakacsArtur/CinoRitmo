extends CharacterBody2D
var curentVelocity = 200
var score = 0
var inside = false
var intopRow = false

func _physics_process(delta: float) -> void:
	#going right 'ere
	velocity.x = curentVelocity
	move_and_slide()

func _on_end_area_body_entered(body: Node2D) -> void:
	curentVelocity = 0
	
func _on_start_area_body_entered(body: Node2D) -> void:
	print("Entered")
	curentVelocity = 60

func _on_top_row_body_entered(body: Node2D) -> void:
	intopRow = true
	print("EnteredTopRow")
func _on_top_row_body_exited(body: Node2D) -> void:
	intopRow = false
	print("ExitedTopRow")

func _process(delta: float) -> void:
	if intopRow:
		if Input.is_action_pressed("toprow"):
			if Input.is_action_pressed("strum"):
				print("moreinfo")
				increaseScore()	

func faultyPlay() -> void:
	pass
	
func increaseScore() -> void:
	score += 100
	print(score)
