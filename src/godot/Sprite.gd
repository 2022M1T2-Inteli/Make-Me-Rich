extends Sprite

var move_speed = 250
var direction = get_global_mouse_position()
# Called when the node enters the scene tree for the first time.
func _process(delta):
	_look_at_mouse()
	_move_to_mouse()

func _look_at_mouse():
	look_at(get_global_mouse_position())

func _move_to_mouse():
	var direction = get_global_mouse_position() - position
	move_and_slide(direction)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
