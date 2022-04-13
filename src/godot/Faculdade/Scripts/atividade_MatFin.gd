extends Node2D

func _ready():
	pass

func _process(delta):
	#Alternativa A da primeira pergunta
	if(Global.atividade_MatFin[0] == true):
		#Bloquear a segunda opcao
		$ParallaxBackground/ParallaxLayer/resposta2_p1.visible = false
		#Tornar visível o indicador de resposta incorreta
		$ParallaxBackground/ParallaxLayer/erro_p1.visible = true
	#Alternativa B da primeira pergunta
	elif(Global.atividade_MatFin[1] == true):
		#Bloquear a primeira opcao
		$ParallaxBackground/ParallaxLayer/resposta1_p1.visible = false
		#Variável de resposta correta
		Global.atividade1[0] = 1 
		#Tornar visível o indicador de resposta correta
		$ParallaxBackground/ParallaxLayer/pergunta1.visible = true
		
	#Alternativa A da segunda pergunta
	if(Global.atividade_MatFin[2] == true):
		#Bloquear a segunda opcao
		$ParallaxBackground/ParallaxLayer/resposta2_p2.visible = false
		#Variável de resposta correta
		Global.atividade1[1] = 1 
		#Tornar visível o indicador de resposta correta
		$ParallaxBackground/ParallaxLayer/pergunta2.visible = true
	#Alternativa B da segunda pergunta
	elif(Global.atividade_MatFin[3] == true):
		#Bloquear a primeira opcao
		$ParallaxBackground/ParallaxLayer/resposta1_p2.visible = false
		#Tornar visível o indicador de resposta incorreta
		$ParallaxBackground/ParallaxLayer/erro_p2.visible = true
		
	#Alternativa A da terceira pergunta
	if(Global.atividade_MatFin[4] == true):
		#Bloquear a segunda opcao
		$ParallaxBackground/ParallaxLayer/resposta2_p3.visible = false
		#Variável de resposta correta
		Global.atividade1[2] = 1
		#Tornar visível o indicador de resposta correta
		$ParallaxBackground/ParallaxLayer/pergunta3.visible = true
	#Alternativa B da terceira pergunta
	elif(Global.atividade_MatFin[5] == true):
		#Bloquear a primeira opcao
		$ParallaxBackground/ParallaxLayer/resposta1_p3.visible = false
		#Tornar visível o indicador de resposta incorreta
		$ParallaxBackground/ParallaxLayer/erro_p3.visible = true
		
	#Alternativa A da quarta pergunta
	if(Global.atividade_MatFin[6] == true):
		#Bloquear a segunda opcao
		$ParallaxBackground/ParallaxLayer/resposta2_p4.visible = false
		#Tornar visível o indicador de resposta incorreta
		$ParallaxBackground/ParallaxLayer/erro_p4.visible = true
	#Alternativa B da quarta pergunta
	elif(Global.atividade_MatFin[7] == true):
		#Bloquear a primeira opcao
		$ParallaxBackground/ParallaxLayer/resposta1_p4.visible = false
		#Variável de resposta correta
		Global.atividade1[3] = 1 
		#Tornar visível o indicador de resposta correta
		$ParallaxBackground/ParallaxLayer/pergunta4.visible = true
	#Declaracao da variável total
	var total = 0
	total = Global.atividade1[0]+Global.atividade1[1]+Global.atividade1[2]+Global.atividade1[3] #Soma do acertos obtidos
	$ParallaxBackground/ParallaxLayer/acertos.text = str(total) #O usuário visualiza o total de acertos que obteve na atividade 

#Confirmacao ao selecionar a alternativa A da primeira pergunta
func _on_resposta1_p1_pressed():
	Global.atividade_MatFin[0] = true

#Confirmacao ao selecionar a alternativa B da primeira pergunta
func _on_resposta2_p1_pressed():
	Global.atividade_MatFin[1] = true

#Confirmacao ao selecionar a alternativa A da segunda pergunta
func _on_resposta1_p2_pressed():
	Global.atividade_MatFin[2] = true

#Confirmacao ao selecionar a alternativa B da segunda pergunta
func _on_resposta2_p2_pressed():
	Global.atividade_MatFin[3] = true

#Confirmacao ao selecionar a alternativa A da terceira pergunta
func _on_resposta1_p3_pressed():
	Global.atividade_MatFin[4] = true

#Confirmacao ao selecionar a alternativa B da terceira pergunta
func _on_resposta2_p3_pressed():
	Global.atividade_MatFin[5] = true

#Confirmacao ao selecionar a alternativa A da quarta pergunta
func _on_resposta1_p4_pressed():
	Global.atividade_MatFin[6] = true

#Confirmacao ao selecionar a alternativa B da quarta pergunta
func _on_resposta2_p4_pressed():
	Global.atividade_MatFin[7] = true

func _on_voltar_pressed():
	#Ao pressionar o botao, o jogador é direcionado a pagina de atividades
	get_tree().change_scene("res://Faculdade/page_Atividade.tscn")
	if(Global.atividadeCompleta < 1):
		#Aumento da barra de progresso das atividades, referente a essa atividade realizada
		Global.atividadeCompleta += 1
