extends KinematicBody2D

# vector2 é a coordenada inicial física do personagem, o ZERO zera o vetor

var m = false
var mu = false
var mo = false
var mi = false
var velocidade = Vector2.ZERO
var abrirEnter = false
var dinheiro = 2000
var pagarBoleto = false
var selecPersonagem
var cont = 0

#mostra o dinheiro no canto superior esquerdo
func _ready():
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str (Global.dinheiro)
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
#faz o botao next sumir com o tutorial
func _on_botaoTutorial_pressed():
	Global.contador += 1
# delta é um método que faz o codigo ser executado a cada frame
func _process(delta):
		#tutorial aparece
	if Global.contador == 0 :
		$CanvasLayer/boasVindas.visible = true
		$CanvasLayer/botaoTutorial.visible = true
		#tutorial sai
	if Global.contador == 1:
		$CanvasLayer/boasVindas.visible = false
		$CanvasLayer/botaoTutorial.visible = false
		$CanvasLayer/instrucNpc.visible = true
		$CanvasLayer/botaoNpc.visible = true

	if Global.contador == 2:
		$CanvasLayer/botaoNome.visible = true
		$CanvasLayer/inserirNome.visible = true
		$CanvasLayer/instrucNpc.visible = false
		$CanvasLayer/botaoNpc.visible = false
	if Global.contador >= 3:
		$CanvasLayer/botaoNome.visible = false
		$CanvasLayer/inserirNome.visible = false

	#fala da professora aparece
	if areaProf == true and prof % 2 == 1:
		$CanvasLayer/professora.visible = true
		$CanvasLayer/fundoProfessora.visible = true
		$CanvasLayer/textoProf.visible = true
		#fala da professora sai
	elif areaProf == false or prof % 2 == 0:
		$CanvasLayer/professora.visible = false
		$CanvasLayer/fundoProfessora.visible = false
		$CanvasLayer/textoProf.visible = false
		#fala do guilherme aparece
	if areaGui == true and gui % 2 == 1:
		$CanvasLayer/guilherme.visible = true
		$CanvasLayer/textoGui.visible = true
		$CanvasLayer/fundoGui.visible = true
	elif areaGui == false or gui % 2 == 0:
		$CanvasLayer/guilherme.visible = false
		$CanvasLayer/textoGui.visible = false
		$CanvasLayer/fundoGui.visible = false
		#fala do vendedor aparece
	if areaVendedor == true and vendedor % 2 == 1:
		$CanvasLayer/vendedor.visible = true
		$CanvasLayer/fundoMario.visible = true
		$CanvasLayer/textoVendedor.visible = true
		$CanvasLayer/nomeVendedor.visible = true
		$CanvasLayer/fundoNome.visible = true
	elif areaVendedor == false or vendedor % 2 == 0:
		$CanvasLayer/vendedor.visible = false
		$CanvasLayer/fundoMario.visible = false
		$CanvasLayer/textoVendedor.visible = false
		$CanvasLayer/nomeVendedor.visible = false
		$CanvasLayer/fundoNome.visible = false
		
	if boaNoite == true and areaCama == true:
		get_tree().change_scene("res://boaNoite.tscn")
#entra no computador
func _on_botaoPC_pressed():
	get_tree().change_scene("res://Cena_computador.tscn")

#abre o celular
func _on_celIcon_pressed():
	$CanvasLayer/celAberto.visible = true
	$CanvasLayer/celCamMapa.visible = true
	$CanvasLayer/sairMapa.visible = true
	$CanvasLayer/celIconn/Panel/AnimationPlayer.play_backwards("popUp")
#abre o mapa do celular 
func _on_celCamMapa_pressed():
	$CanvasLayer/celAberto.visible = false
	$CanvasLayer/celMapa.visible = true

#fecha o mapa e o celular
func _on_sairMapa_pressed():
	$CanvasLayer/celMapa.visible = false
	$CanvasLayer/celAberto.visible = false
	$CanvasLayer/celCamMapa.visible = false
	$CanvasLayer/sairMapa.visible = false


func _physics_process(delta):
	move_and_slide(velocidade)
	# Codigo pra movimentação 
	if Input.is_action_pressed("tecla_w"):
		m = true
		if m:
			velocidade.y = -200
			$AnimatedSpriteA.play("walk.costas")
	#O código abaixo faz o personagem ficar parado na direção do seu ultimo movimento
	elif Input.is_action_just_released("tecla_w"):
		m = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSpriteA.play("idle.costas")
	#O exemplo acima se repete pra todas as direções 
		
		
	elif Input.is_action_pressed("tecla_s"):
		mu = true
		if	mu:
			velocidade.y = 200
			$AnimatedSpriteA.play("walk.frente")
	elif Input.is_action_just_released("tecla_s"):
		mu = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSpriteA.play("idle.frente")
		
		
	elif Input.is_action_pressed("tecla_a"):
		mo = true
		if	mo:
			velocidade.x = -200
			$AnimatedSpriteA.play("walk.esquerda")
	elif Input.is_action_just_released("tecla_a"):
		mo = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSpriteA.play("idle.esquerda")


	elif Input.is_action_pressed("tecla_d"):
		mi = true
		if	mi:
			velocidade.x = 200
			$AnimatedSpriteA.play("walk.direita")
	elif Input.is_action_just_released("tecla_d"):
		mi = false
		velocidade.x = 0
		velocidade.y = 0
		$AnimatedSpriteA.play("idle.direita")


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
func _on_Movi_A_button_down():
	velocidade.x = -200
	$AnimatedSpriteA.play("walk.esquerda")

func _on_Movi_A_button_up():
	velocidade.x = 0
	$AnimatedSpriteA.play("idle.esquerda")


func _on_Movi_D_button_down():
	velocidade.x = 200
	$AnimatedSpriteA.play("walk.direita")

func _on_Movi_D_button_up():
	velocidade.x = 0
	$AnimatedSpriteA.play("idle.direita")


func _on_Movi_W_button_down():
	velocidade.y = -200
	$AnimatedSpriteA.play("walk.costas")

func _on_Movi_W_button_up():
	velocidade.y = 0
	$AnimatedSpriteA.play("idle.costas")


func _on_Movi_S_button_down():
	velocidade.y = 200
	$AnimatedSpriteA.play("walk.frente")

func _on_Movi_S_button_up():
	velocidade.y = 0
	$AnimatedSpriteA.play("idle.frente")

var area2DPc = false
#muda a variável quando fica do lado do computador
func _on_computer_body_entered(body):
	area2DPc = true


#muda a variável quando fica do lado da professora
var areaProf = false
func _on_caixaTexto_body_entered(body):
	areaProf = true

func _on_caixaTexto_body_exited(body):
	areaProf = false 

#botao que gasta dinheiro
func _on_pagarBoleto_pressed():
	Global.dinheiro -= 500
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)

#Adicionar um ao cont com os botões sendo pressionados
func _on_botaoNpc_pressed():
	Global.contador += 1

func _on_botaoNome_pressed():
	Global.contador += 1

func _on_botaoPersonagem_pressed():
	Global.contador += 1
	
#botao que foca atras da professora
var prof = 0
func _on_botaoProf_pressed():
	prof += 1

var gui = 0
func _on_botaoGui_pressed():
	gui += 1

var vendedor = 0 
func _on_botaoVendedor_pressed():
	vendedor += 1
	
#mostra a notificação
func _on_areaNotiicacao_body_entered(body):
	yield(get_tree().create_timer(2.6), "timeout")
	$CanvasLayer/celIconn/Panel/AnimationPlayer.play("popUp")
	#Global.notificacao = false

#detecta se esta perto do guilherme
var areaGui = false
func _on_caixaTextoGui_body_entered(body):
	areaGui = true
func _on_caixaTextoGui_body_exited(body):
	areaGui = false

var areaVendedor = false
func _on_areaVendedor_body_entered(body):
	areaVendedor = true
func _on_areaVendedor_body_exited(body):
	areaVendedor = false


func _on_botaoLivro_pressed():
	cont += 1
	$CanvasLayer/matFinanceira.visible = true
	$CanvasLayer/next.visible = true
	$CanvasLayer/nextLivro.visible = true
func _on_nextLivro_pressed():
	cont += 1
	if cont == 2:
		$CanvasLayer/matFinanceira.visible = false
		$CanvasLayer/inflacao.visible = true
	elif cont == 3:
		$CanvasLayer/inflacao.visible = false
		$CanvasLayer/jurosSimples.visible = true
	elif cont == 4:
		$CanvasLayer/jurosSimples.visible = false
		$CanvasLayer/jurosCompostos.visible = true
	elif cont == 5:
		$CanvasLayer/jurosCompostos.visible = false
		$CanvasLayer/investimentos.visible = true
	elif cont == 6:
		$CanvasLayer/investimentos.visible = false
		$CanvasLayer/publico.visible = true
	elif cont == 7:
		$CanvasLayer/publico.visible = false
		$CanvasLayer/incentivados.visible = true
	elif cont == 8:
		$CanvasLayer/incentivados.visible = false
		$CanvasLayer/next.visible = false
		$CanvasLayer/nextLivro.visible = false
		cont = 0
		



var boaNoite = false
func _on_botaoBoaNoite_pressed():
	boaNoite = true  
	
var areaCama = false
func _on_areaCama_body_entered(body):
	areaCama = true

func _on_areaCama_body_exited(body):
	areaCama = false

func _on_botaoMercado_pressed():
	$CanvasLayer/mercado.visible = true
	$CanvasLayer/setaVolta.visible = true
	$CanvasLayer/sairMercado.visible = true
	$CanvasLayer/botaoBife.visible = true
	$CanvasLayer/botaoMacarrao.visible = true
	$CanvasLayer/botaoSushi.visible = true
	$CanvasLayer/botaoLeite.visible = true
	$CanvasLayer/botaoBolo.visible = true
	$CanvasLayer/botaoHamb.visible = true
	$CanvasLayer/botaoRosquinha.visible = true
	$CanvasLayer/botaoMaca.visible = true

func _on_sairMercado_pressed():
	$CanvasLayer/mercado.visible = false
	$CanvasLayer/setaVolta.visible = false
	$CanvasLayer/sairMercado.visible = false
	$CanvasLayer/botaoBife.visible = false
	$CanvasLayer/botaoMacarrao.visible = false
	$CanvasLayer/botaoSushi.visible = false
	$CanvasLayer/botaoLeite.visible = false
	$CanvasLayer/botaoBolo.visible = false
	$CanvasLayer/botaoHamb.visible = false
	$CanvasLayer/botaoRosquinha.visible = false
	$CanvasLayer/botaoMaca.visible = false


func _on_botaoFabrica_pressed():
	get_tree().change_scene("res://Interface.tscn")

func _on_botaoBife_pressed():
	Global.dinheiro -= 20
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)
	Global.menosFeliz += 16.68

func _on_botaoMacarrao_pressed():
	Global.dinheiro -= 15
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)
	Global.menosFeliz += 12.51

func _on_botaoSushi_pressed():
	Global.dinheiro -= 15
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)
	Global.menosFeliz += 12.51

func _on_botaoLeite_pressed():
	Global.dinheiro -= 5
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)
	Global.menosFeliz += 4.17

func _on_botaoBolo_pressed():
	Global.dinheiro -= 10
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)
	Global.menosFeliz += 8.34

func _on_botaoHamb_pressed():
	Global.dinheiro -= 10
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)
	Global.menosFeliz += 8.34

func _on_botaoRosquinha_pressed():
	Global.dinheiro -= 5
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)
	Global.menosFeliz += 4.17

func _on_botaoMaca_pressed():
	Global.dinheiro -= 5
	$CanvasLayerDinheiro/DinheiroPlayer.text = "R$" + str(Global.dinheiro)
	Global.menosFeliz += 4.17
