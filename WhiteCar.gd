extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		self.rotation += direction / 10
	
	velocity = transform.x * Input.get_axis("ui_down", "ui_up") * SPEED #Move
	
	
	move_and_slide()
