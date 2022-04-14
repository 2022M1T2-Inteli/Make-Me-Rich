extends Node2D

func _ready():
	pass

func _process(delta):
	#Alternativa A da primeira pergunta
	if(Global.teste1[0] == true):
		#Bloquear a segunda opcao
		$ParallaxBackground/ParallaxLayer/resposta2_p1.visible = false
		#Pontuacao ao acertar a pergunta
		Global.testeA[0] = 3.3 
		#Tornar visível o indicador de resposta correta
		$ParallaxBackground/ParallaxLayer/respostaCerta1.visible = true
	#Alternativa B da primeira pergunta
	elif(Global.teste1[1] == true):
		#Bloquear a primeira opcao
		$ParallaxBackground/ParallaxLayer/resposta1_p1.visible = false
		#Tornar visível o indicador de resposta incorreta
		$ParallaxBackground/ParallaxLayer/erro1.visible = true	

	#Alternativa A da segunda pergunta
	if(Global.teste1[2] == true):
		#Bloquear a segunda opcao
		$ParallaxBackground/ParallaxLayer/resposta2_p2.visible = false
		#Tornar visível o indicador de resposta incorreta
		$ParallaxBackground/ParallaxLayer/erro2.visible = true
	#Alternativa B da segunda pergunta
	elif(Global.teste1[3] == true):
		#Bloquear a primeira opcao
		$ParallaxBackground/ParallaxLayer/resposta1_p2.visible = false
		#Pontuacao ao acertar a pergunta
		Global.testeA[1] = 3.3
		#Tornar visível o indicador de resposta correta
		$ParallaxBackground/ParallaxLayer/respostaCerta2.visible = true
		
	#Alternativa A da terceira pergunta
	if(Global.teste1[4] == true):
		#Bloquear a segunda opcao
		$ParallaxBackground/ParallaxLayer/resposta2_p3.visible = false
		#Pontuacao ao acertar a pergunta
		Global.testeA[2] = 3.4
		#Tornar visível o indicador de resposta correta
		$ParallaxBackground/ParallaxLayer/respostaCerta3.visible = true
	#Alternativa B da terceira pergunta
	elif(Global.teste1[5] == true):
		#Bloquear a primeira opcao
		$ParallaxBackground/ParallaxLayer/resposta1_p3.visible = false
		#Tornar visível o indicador de resposta incorreta
		$ParallaxBackground/ParallaxLayer/erro3.visible = true

#Confirmacao ao selecionar a alternativa A da primeira pergunta
func _on_resposta1_p1_pressed():
	Global.teste1[0] = true

#Confirmacao ao selecionar a alternativa B da primeira pergunta
func _on_resposta2_p1_pressed():
	Global.teste1[1] = true

#Confirmacao ao selecionar a alternativa A da segunda pergunta
func _on_resposta1_p2_pressed():
	Global.teste1[2] = true

#Confirmacao ao selecionar a alternativa B da segunda pergunta
func _on_resposta2_p2_pressed():
	Global.teste1[3] = true
	
#Confirmacao ao selecionar a alternativa A da terceira pergunta
func _on_resposta1_p3_pressed():
	Global.teste1[4] = true

#Confirmacao ao selecionar a alternativa B da terceira pergunta
func _on_resposta2_p3_pressed():
	Global.teste1[5] = true

func _on_voltar_pressed():
	#Ao pressionar o botao, o jogador é direcionado a pagina de testes 
	get_tree().change_scene("res://Faculdade/page_Teste.tscn")
	if(Global.testeCompleto < 1):
		#Aumento da barra de progresso dos teste, referente a essa avaliacao realizada
		Global.testeCompleto += 1
