extends KinematicBody2D

# vector2 é a coordenada inicial física do personagem, o ZERO zera o vetor

var m = false
var mu = false
var mo = false
var mi = false
var velocidade = Vector2.ZERO
var abrirPcEnter = false
var dinheiro = 2000
var pagarBoleto = false
var contador = 0

func _ready():
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str (Global.dinheiro)
	
	
# delta é um método que faz o codigo ser executado a cada frame
func _process(delta):
	if Input.is_action_pressed("interacao"):
		contador += 1
		
	if area2DPc ==true and contador % 2 == 1:
		get_tree().change_scene("res://Cena_computador.tscn")
		
	if areaProf == true and contador % 2 == 1:
		$CanvasLayer/professora.visible = true
		$CanvasLayer/fundo.visible = true
		$CanvasLayer/textoProf.visible = true
		
	elif areaProf == true and contador % 2 == 0:
		$CanvasLayer/professora.visible = false
		$CanvasLayer/fundo.visible = false
		$CanvasLayer/textoProf.visible = false
func _physics_process(delta):
	move_and_slide(velocidade)
	# Codigo pra movimentação 
	if Input.is_action_pressed("tecla_w"):
		m = true
		if m:
			velocidade.y = -200
			$AnimatedSprite.play("walk.costas")
	#O código abaixo faz o personagem ficar parado na direção do seu ultimo movimento
	elif Input.is_action_just_released("tecla_w"):
		m = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSprite.play("idle.costas")
	#O exemplo acima se repete pra todas as direções 
		
		
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


#função que faz o personagem entrar em um ambiente novo em uma area
#para a cidade
func _on_portaDentro_body_entered(body):
	position.x = 201
	position.y = 3078
#para dentro de casa
func _on_portaFora_body_entered(body):
	position.x = 1038
	position.y = 1091
#para dentro do banco
func _on_portaBanco_body_entered(body):
	position.x = 1133
	position.y = -187
#de volta pra cidade, na frente do banco
func _on_dentroBanco_body_entered(body):
	position.x = 1583
	position.y = 3097

func _on_portaFaculdade_body_entered(body):
	position.x = 1060
	position.y = -2090
	
func _on_dentroUniversidade_body_entered(body):
	position.x = 1582
	position.y = 4093

func _on_portaMercado_body_entered(body):
	position.x = 1070
	position.y = -4053
	
func _on_dentroMercado_body_entered(body):
	position.x = 586
	position.y = 4101

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

var area2DPc = false
func _on_computer_body_entered(body):
	area2DPc = true

var areaProf = false
func _on_caixaTexto_body_entered(body):
	areaProf = true

func _on_pagarBoleto_pressed():
	Global.dinheiro -= 500
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)

func _on_celIcon_pressed():
	$CanvasLayer/celAberto.visible = true
	$CanvasLayer/celCamMapa.visible = true
	$CanvasLayer/sairMapa.visible = true
	
func _on_celCamMapa_pressed():
	$CanvasLayer/celAberto.visible = false
	$CanvasLayer/celMapa.visible = true

func _on_sairMapa_pressed():
	$CanvasLayer/celMapa.visible = false
	$CanvasLayer/celAberto.visible = false
	$CanvasLayer/celCamMapa.visible = false
	$CanvasLayer/sairMapa.visible = false
	



	
