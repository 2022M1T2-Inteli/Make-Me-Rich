extends KinematicBody2D

var move_speed = 250
var direction = get_global_mouse_position() -position
var stop_distance = 0

func _process(delta):
	_move_to_mouse()
	_look_at_mouse()

func _look_at_mouse():
	if Input.is_action_just_pressed("click"):
		look_at(get_global_mouse_position())
		rotation_degrees = rotation_degrees + 90

func _move_to_mouse():
	if Input.is_action_pressed ("click"):
		var direction = get_global_mouse_position() -position
		var normalized_direction = direction.normalized()
		move_and_slide(direction)
