extends KinematicBody2D

var move_speed = 250
var direction = get_global_mouse_position() -position
var stop_distance = 0
var penis = false

func _process(delta):
	_move_to_mouse()
	_look_at_mouse()

func _ready():
	var button = Button.new()
	button.connect("pressed", self, "_button_pressed")



func _look_at_mouse():
	if penis == true:
		Input.is_action_just_pressed("click")
		look_at(get_global_mouse_position())
		rotation_degrees = rotation_degrees + 360

func _move_to_mouse():
	if penis == true:
		Input.is_action_pressed ("click")
		var direction = get_global_mouse_position() -position
		var normalized_direction = direction.normalized()
		move_and_slide(direction)



	
	

func _on_Button2_pressed():
	if $Button2.pressed:
		penis = true



func _on_Area_Fio2_body_entered(body):
	$CanvasLayer/FioAzul2.visible = true
	$CanvasLayer/VerdeClaro.visible = true
	$Button2.visible = false
	$FioAzul.visible = false
