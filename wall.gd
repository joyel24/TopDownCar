extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.checkpoint_total += 1
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	Global.wall_collision = true
	Global.reset=true

func _on_area_2d_body_exited(body):
	Global.wall_collision = false
