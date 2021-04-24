extends KinematicBody2D
export var SPEED = 1000
var motion = Vector2.ZERO
func _physics_process(delta):
	motion = update_input()
	move_and_slide(motion)
func update_input():
	var input = Vector2()
	input.x = int(Input.get_action_strength("ui_left"))-int(Input.get_action_strength("ui_right"))
	input.y = int(Input.get_action_strength("ui_up"))-int(Input.get_action_strength("ui_down"))
	return -input*SPEED
