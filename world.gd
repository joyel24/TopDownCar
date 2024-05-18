extends Node2D

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	score = 0
	$WhiteCar/CanvasLayer/checkpoints_label.set("theme_override_font_sizes/font_size", 60)
	Global.rotate=0.0
	if Global.reset==true:
		Global.reset=false
		Global.checkpoint_total = Global.checkpoint_total / 2
		Global.checkpoint_valid = 0
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(score)
	if Global.checkpoint_total > Global.checkpoint_valid:
		score += 1
	#print(str(Global.checkpoint_total)+" "+str(Global.checkpoint_valid))
	$WhiteCar/CanvasLayer/checkpoints_label.text = (str(Global.checkpoint_valid)+" / "+str(Global.checkpoint_total)+"\n"+str(score))
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
