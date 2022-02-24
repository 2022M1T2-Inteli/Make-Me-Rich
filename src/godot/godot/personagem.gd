extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# vector2 é a coordenada inicial física do personagem, o ZERO zera o vetor
var velocidade = Vector2.ZERO
# Called every frame. 'delta' is the elapsed time since the previous frame.
# Codigo pra movimentação 
func _process(delta):
	if Input.is_action_pressed("tecla_w"):
		velocidade.y = -200
		#chama a animação que foi criada
		$AnimatedSprite.play("walk.costas")
		if Input.is_action_just_pressed("tecla_w"):
			velocidade.x = 0
			velocidade.y = 0
			$AnimatedSprite.play("idle.frente")
			print("oi")
	elif Input.is_action_pressed("tecla_s"):
		velocidade.y = 200
		$AnimatedSprite.play("walk.frente")
		
	elif Input.is_action_pressed("tecla_d"):
		velocidade.x = 200
		$AnimatedSprite.play("walk.direita")
	elif Input.is_action_pressed("tecla_a"):
		velocidade.x = -200
		$AnimatedSprite.play("walk.esquerda")
		if delta is InputEventKey:
			if delta.pressed and delta.scancode == KEY_A:
				print("Reset")
			
	
		
		


			
		
	#if eh uma estrutura de decisao
	#para ter fisica de colisão
	move_and_slide(velocidade)
