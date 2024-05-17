extends CharacterBody2D

const SPEED = 250.0
const ROTATION_SPEED = 0.1

var inertia = 0.0

func _physics_process(delta):
	print(rotation)
	var rotate = Input.get_axis("ui_left", "ui_right")
	if rotate:
		self.rotation += rotate * ROTATION_SPEED #rotate

	if Global.wall_collision == false:
		#velocity = transform.x * SPEED #Input.get_axis("ui_down", "ui_up") #Move
		velocity.x = move_toward(velocity.x, SPEED, 10)
		velocity.y = move_toward(velocity.y, SPEED, 10)
		move_and_slide()
		
	elif Global.wall_collision: # && Input.get_axis("ui_down", "ui_up") != 0 :
		if rotation < 0:
			position.y -= 1
		elif rotation > 0:
			position.y += 1
			#velocity = velocity.normalized() * SPEED
			#move_and_slide()
	
	#if Global.wall_collision == true:
		#print("true")
	#else:
		#print("pas true")
	
