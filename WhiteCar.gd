extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		self.rotation += direction / 10
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	velocity = transform.x * Input.get_axis("ui_down", "ui_up") * SPEED
	
	
	move_and_slide()
