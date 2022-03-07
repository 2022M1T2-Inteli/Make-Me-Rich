extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# vector2 é a coordenada inicial física do personagem, o ZERO zera o vetor
var m = false
var mu = false
var mo = false
var mi = false
var velocidade = Vector2.ZERO

# Called every frame. 'delta' is the elapsed time since the previous frame.
# Codigo pra movimentação 
func _physics_process(delta):
	move_and_slide(velocidade)
	if Input.is_action_pressed("tecla_w"):
		m = true
		if m:
			velocidade.y = -200
			$AnimatedSprite.play("walk.costas")
		#o codigo abaixo faz o personagem ficar parado na direção do seu ultimo movimento
	elif Input.is_action_just_released("tecla_w"):
		m = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSprite.play("idle.costas")
	
		
		
	elif Input.is_action_pressed("tecla_s"):
		mu = true
		if	mu:
			velocidade.y = 200
			$AnimatedSprite.play("walk.frente")
	elif Input.is_action_just_released("tecla_s"):
		mu = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSprite.play("idle.frente")
		
		
	elif Input.is_action_pressed("tecla_a"):
		mo = true
		if	mo:
			velocidade.x = -200
			$AnimatedSprite.play("walk.esquerda")
	elif Input.is_action_just_released("tecla_a"):
		mo = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSprite.play("idle.esquerda")


	elif Input.is_action_pressed("tecla_d"):
		mi = true
		if	mi:
			velocidade.x = 200
			$AnimatedSprite.play("walk.direita")
	elif Input.is_action_just_released("tecla_d"):
		mi = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSprite.play("idle.direita")


#funçao que faz o personagem entrar em um ambiente novo em uma area
func _on_porta_1_body_entered(body):
	position.x = 3457
	position.y = 1025


func _on_Area2D_body_entered(body):
	position.x = 1037
	position.y = 1077


func _on_computer_body_entered(body):
	pass

#Movimentação Botões
func _on_Movi_A_button_down():
	velocidade.x = -200
	$AnimatedSprite.play("walk.esquerda")

func _on_Movi_A_button_up():
	velocidade.x = 0
	$AnimatedSprite.play("idle.esquerda")


func _on_Movi_D_button_down():
	velocidade.x = 200
	$AnimatedSprite.play("walk.direita")

func _on_Movi_D_button_up():
	velocidade.x = 0
	$AnimatedSprite.play("idle.direita")


func _on_Movi_W_button_down():
	velocidade.y = -200
	$AnimatedSprite.play("walk.costas")

func _on_Movi_W_button_up():
	velocidade.y = 0
	$AnimatedSprite.play("idle.costas")


func _on_Movi_S_button_down():
	velocidade.y = 200
	$AnimatedSprite.play("walk.frente")

func _on_Movi_S_button_up():
	velocidade.y = 0
	$AnimatedSprite.play("idle.frente")
