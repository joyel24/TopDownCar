extends CharacterBody2D

const SPEED = 220.0
const ROTATION_SPEED = 0.1

var inertia = 0.0

func _physics_process(delta):
	#print(rotation)
	#Global.rotate = Input.get_axis("ui_left", "ui_right")
	#print("test "+str(Global.rotate))
	if rotate:
		self.rotation += Global.rotate * ROTATION_SPEED #rotate

	if Global.wall_collision == false:
		velocity = transform.x * SPEED #* Input.get_axis("ui_down", "ui_up") #Move
		#velocity.x = move_toward(transform.x, SPEED, 10)
		#velocity.y = move_toward(transform.y, SPEED, 10)
		move_and_slide()
		
	elif Global.wall_collision: # && Input.get_axis("ui_down", "ui_up") != 0 :
		get_tree().reload_current_scene()
		#if rotation < 0:
			#position.y -= 1
		#elif rotation > 0:
			#position.y += 1
			#velocity = velocity.normalized() * SPEED
			#move_and_slide()
	
	##if Global.wall_collision == true:
		##print("true")
	##else:
		##print("pas true")
	#
#
#@export var speed = 0.1
#@export var rotation_speed = 3
#var acceleration = 20
#
#var rotation_direction = 0
#
#func _physics_process(delta):
	#rotation_direction = Input.get_axis("ui_left", "ui_right")
	#velocity += transform.x  * (acceleration * speed)
	#rotation += rotation_direction * rotation_speed * delta
	#move_and_slide()
