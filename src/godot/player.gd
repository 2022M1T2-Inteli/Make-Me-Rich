extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var deslocamento = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	if Input.is_action_pressed("ui_down"):
		$player.position.y += 1
	if Input.is_action_pressed("ui_up"):
		$player.position.y -= 1
	if Input.is_action_pressed("ui_left"):
		$player.position.x -= 1
	if Input.is_action_pressed("ui_right"):
		$player.position.x += 1
	$player.move_local_x(deslocamento)
