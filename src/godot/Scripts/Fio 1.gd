extends KinematicBody2D

var fioMove = 250
var direcao = get_global_mouse_position() -position
var distanciaParada = 0
var p = false

func _process(delta):
	_move_to_mouse()
	_look_at_mouse()

func _ready():
	var botao = Button.new()
	botao.connect("pressed", self, "_button_pressed")
# Funcionalidade do botão

func _look_at_mouse():
	if p == true:
		Input.is_action_just_pressed("click")
		look_at(get_global_mouse_position())
		rotation_degrees = rotation_degrees + 360
# Quando o botao for apertado, o corpo se posiciona corretamente em relação ao mouse

func _move_to_mouse():
	if p == true:
		Input.is_action_pressed ("click")
		var direcao = get_global_mouse_position() -position
		var direcaoNormal = direcao.normalized()
		move_and_slide(direcao)
# Quando o botao for apertado, o corpo so move em direção ao mouse


func _on_Button_1_pressed():
	if $Button1.pressed:
		p = true
# Quando o botão for apertado, "P" vira verdadeiro para que as funções de movimento funcionem




func _on_Area_Fio1_body_entered(body):
	$CanvasLayer/FioAmarelo2.visible = true
	$CanvasLayer/PontaDeFio.visible = true
	$CanvasLayer/VerdeClaro.visible = true
	$Button1.visible = false
	$FioAmarelo.visible = false
	$CollisionShape2D.visible = false
# Quando o corpo entrar na Area 2d, os sprites antigos ficam invisiveis e outros ficam visiveis
	
	 
	
	
