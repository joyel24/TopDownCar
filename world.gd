extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.rotate=0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	#print("t")
	#Global.rotate = 1
	pass # Replace with function body.


func _on_area_2d_input_event(viewport, event, shape_idx):
	#print("viewport "+str(viewport))x²
	#print("event "+str(event))
	##print("shape_idx "+str(shape_idx))
	#Global.rotate = 1
	pass # Replace with function body.


func _on_touch_screen_button_pressed():
	Global.rotate = 1
	pass # Replace with function body.
func _on_touch_screen_button_released():
	Global.rotate = 0
	pass # Replace with function body.

func _on_touch_screen_button_2_pressed():
	Global.rotate = -1
	pass # Replace with function body.

func _on_touch_screen_button_2_released():
	Global.rotate = 0	
	pass # Replace with function body.
