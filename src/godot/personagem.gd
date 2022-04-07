extends KinematicBody2D

# vector2 é a coordenada inicial física do personagem, o ZERO zera o vetor

var pressionandoW = false
var pressionandoS = false
var pressionandoA = false
var pressionandoD = false
var velocidade = Vector2.ZERO
var abrirEnter = false
var dinheiro = 2000
var pagarBoleto = false
var selecPersonagem
var cont = 0
var contVideo

#mostra o dinheiro no canto superior esquerdo
func _ready():
	
	#mostra o personagem escolhido
	if Global.selecPersonagem == 1:
		$AnimatedSpriteA.visible = true
	if Global.selecPersonagem == 2:
		$AnimatedSpriteB.visible = true
	if Global.selecPersonagem == 3:
		$AnimatedSpriteC.visible = true
	if Global.selecPersonagem == 4:
		$AnimatedSpriteD.visible = true
	$CanvasLayer/happyBar.percent_visible = false 
	
	yield (get_tree().create_timer(1),"timeout")
	
	

		
	if boaNoite == true and areaCama == true:
		get_tree().change_scene("res://boaNoite.tscn")
		Global.posicao = "casa"
	#faz spawnar no banco
	if Global.posicao == "banco":
		position.x = 1400
		position.y = -468
		Global.posicao = null
	#faz spawnar na fabrica
	if Global.posicao == "fabrica":
		position.x = 1320
		position.y = -8062
		Global.posicao = null
	#faz spawnar em casa
	if Global.posicao == "casa":
		position.x = 1056
		position.y = 604
		Global.posicao = null
	#faz spawnar no cassino
	if Global.posicao == "cassino":
		position.x = 1348
		position.y = -5891
		Global.posicao = null



func _physics_process(delta):
	move_and_slide(velocidade)
	# Codigo pra movimentação 
	if Input.is_action_pressed("tecla_w"):
		pressionandoW = true
		if pressionandoW:
			velocidade.y = -200
			$AnimatedSpriteA.play("walk.costas")
			$AnimatedSpriteB.play("walk.costas")
			$AnimatedSpriteC.play("walk.costas")
			$AnimatedSpriteD.play("walk.costas")
	#O código abaixo faz o personagem ficar parado na direção do seu ultimo movimento
	elif Input.is_action_just_released("tecla_w"):
		pressionandoW = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSpriteA.play("idle.costas")
		$AnimatedSpriteB.play("idle.costas")
		$AnimatedSpriteC.play("idle.costas")
		$AnimatedSpriteD.play("idle.costas")
	#O exemplo acima se repete pra todas as direções 
		
		
	elif Input.is_action_pressed("tecla_s"):
		pressionandoS = true
		if	pressionandoS:
			velocidade.y = 200
			$AnimatedSpriteA.play("walk.frente")
			$AnimatedSpriteB.play("walk.frente")
			$AnimatedSpriteC.play("walk.frente")
			$AnimatedSpriteD.play("walk.frente")
	elif Input.is_action_just_released("tecla_s"):
		pressionandoS = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSpriteA.play("idle.frente")
		$AnimatedSpriteB.play("idle.frente")
		$AnimatedSpriteC.play("idle.frente")
		$AnimatedSpriteD.play("idle.frente")
		
		
	elif Input.is_action_pressed("tecla_a"):
		pressionandoA = true
		if	pressionandoA:
			velocidade.x = -200
			$AnimatedSpriteA.play("walk.esquerda")
			$AnimatedSpriteB.play("walk.esquerda")
			$AnimatedSpriteC.play("walk.esquerda")
			$AnimatedSpriteD.play("walk.esquerda")
	elif Input.is_action_just_released("tecla_a"):
		pressionandoA = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSpriteA.play("idle.esquerda")
		$AnimatedSpriteB.play("idle.esquerda")
		$AnimatedSpriteC.play("idle.esquerda")
		$AnimatedSpriteD.play("idle.esquerda")


	elif Input.is_action_pressed("tecla_d"):
		pressionandoD = true
		if	pressionandoD:
			velocidade.x = 200
			$AnimatedSpriteA.play("walk.direita")
			$AnimatedSpriteB.play("walk.direita")
			$AnimatedSpriteC.play("walk.direita")
			$AnimatedSpriteD.play("walk.direita")
	elif Input.is_action_just_released("tecla_d"):
		pressionandoD = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSpriteA.play("idle.direita")
		$AnimatedSpriteB.play("idle.direita")
		$AnimatedSpriteC.play("idle.direita")
		$AnimatedSpriteD.play("idle.direita")


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
#entra na faculdade
func _on_portaFaculdade_body_entered(body):
	position.x = 688
	position.y = -2074
#de volta para a cidade, na frente da faculdade
func _on_dentroUniversidade_body_entered(body):
	position.x = 1582
	position.y = 4093
#entra no mercado
func _on_portaMercado_body_entered(body):
	position.x = 1070
	position.y = -4053
#de volta para a cidade, na frente do mercado
func _on_dentroMercado_body_entered(body):
	position.x = 586
	position.y = 4101
#entra no cassino
func _on_portaCassino_body_entered(body):
	position.x = 1352
	position.y = -5417
#de volta para cidade, na frente do cassino
func _on_dentroCassino_body_entered(body):
	position.x = 1588
	position.y = 2422
#entra no trabalho
func _on_portaTrabalho_body_entered(body):
	position.x = 1317
	position.y = -7656
#volta pra cidade, na frente do trabalho
func _on_dentroTrabalho_body_entered(body):
	position.x = 725
	position.y = 2438

#Movimentação Botões
func _on_movEsquerda_button_down():
	velocidade.x = -200
	#Faz as animações funcionarem, cada uma de um personagem diferente
	$AnimatedSpriteA.play("walk.esquerda")
	$AnimatedSpriteB.play("walk.esquerda")
	$AnimatedSpriteC.play("walk.esquerda")
	$AnimatedSpriteD.play("walk.esquerda")
func _on_movEsquerda_button_up():
	velocidade.x = 0
	$AnimatedSpriteA.play("idle.esquerda")
	$AnimatedSpriteB.play("idle.esquerda")
	$AnimatedSpriteC.play("idle.esquerda")
	$AnimatedSpriteD.play("idle.esquerda")

func _on_movDireita_button_down():
	velocidade.x = 200
	$AnimatedSpriteA.play("walk.direita")
	$AnimatedSpriteB.play("walk.direita")
	$AnimatedSpriteC.play("walk.direita")
	$AnimatedSpriteD.play("walk.direita")

func _on_movDireita_button_up():
	velocidade.x = 0
	$AnimatedSpriteA.play("idle.direita")
	$AnimatedSpriteB.play("idle.direita")
	$AnimatedSpriteC.play("idle.direita")
	$AnimatedSpriteD.play("idle.direita")


func _on_movCima_button_down():
	velocidade.y = -200
	$AnimatedSpriteA.play("walk.costas")
	$AnimatedSpriteB.play("walk.costas")
	$AnimatedSpriteC.play("walk.costas")
	$AnimatedSpriteD.play("walk.costas")

func _on_movCima_button_up():
	velocidade.y = 0
	$AnimatedSpriteA.play("idle.costas")
	$AnimatedSpriteB.play("idle.costas")
	$AnimatedSpriteC.play("idle.costas")
	$AnimatedSpriteD.play("idle.costas")


func _on_movBaixo_button_down():
	velocidade.y = 200
	$AnimatedSpriteA.play("walk.frente")
	$AnimatedSpriteB.play("walk.frente")
	$AnimatedSpriteC.play("walk.frente")
	$AnimatedSpriteD.play("walk.frente")

func _on_movBaixo_button_up():
	velocidade.y = 0
	$AnimatedSpriteA.play("idle.frente")
	$AnimatedSpriteB.play("idle.frente")
	$AnimatedSpriteC.play("idle.frente")
	$AnimatedSpriteD.play("idle.frente")

var area2DPc = false
#muda a variável quando fica do lado do computador
func _on_computer_body_entered(body):
	area2DPc = true



#botao que gasta dinheiro
func _on_pagarBoleto_pressed():
	Global.dinheiro -= 500
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)

#Adicionar um ao cont com os botões sendo pressionados

#Cria uma váriavel booleana que muda quando o botão da cama é pressionado, volta ao normal quando muda de cena
var boaNoite = false
func _on_botaoBoaNoite_pressed():
	boaNoite = true  
#Cria uma variável booleana que muda quando entra em uma área perto da cama, e muda de novo qando sai
var areaCama = false
func _on_areaCama_body_entered(body):
	areaCama = true

func _on_areaCama_body_exited(body):
	areaCama = false

func _on_botaoFabrica_pressed():
	get_tree().change_scene("res://Interface.tscn")
	Global.abriuJogoFab += 1


#muda para a tela de investimentos
func _on_caixaInvestir_pressed():
	get_tree().change_scene("res://Cena_computador.tscn")

#muda para o caça niquel
func _on_botaoCassino1_pressed():
	get_tree().change_scene("res://GameCassino.tscn")

#muda para o caça niquel
func _on_botaoCassino2_pressed():
	get_tree().change_scene("res://GameCassino.tscn")

func _on_botaoFios_pressed():
	get_tree().change_scene("res://TaskFios.tscn")
	Global.abriuJogoFio += 1




