extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# vector2 é a coordenada inicial física do personagem, o ZERO zera o vetor
var velocidade = Vector2.ZERO
var posicao_idle = "0"
# Called every frame. 'delta' is the elapsed time since the previous frame.
# Codigo pra movimentação 
func _physics_process(delta):
	if Input.is_action_pressed("tecla_w"):
		velocidade.y = -200
		posicao_idle = "cima"
		#chama a animação que foi criada
		$AnimatedSprite.play("walk.costas")
	elif Input.is_action_pressed("tecla_s"):
		velocidade.y = 200
		posicao_idle = "baixo"
		$AnimatedSprite.play("walk.frente")
	elif Input.is_action_pressed("tecla_d"):
		velocidade.x = 200
		$AnimatedSprite.play("walk.direita")
	elif Input.is_action_pressed("tecla_a"):
		velocidade.x = -200
		$AnimatedSprite.play("walk.esquerda")
	else:
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSprite.play("idle.frente")
	
	#if eh uma estrutura de decisao
	#para ter fisica de colisão
	move_and_slide(velocidade)
	

#funçao que faz o personagem entrar em um ambiente novo em uma area
func _on_porta_1_body_entered(body):
	position.x = 2383
	position.y = 99


func _on_Area2D_body_entered(body):
	position.x = 1291
	position.y = 568
