extends Node2D

func _ready():
	#Conforme os dias os botoes sao liberados para o usuário acessar determinados testes
	if(Global.dia >= 3):
		$ParallaxBackground/ParallaxLayer/Button_Teste1.visible = true
		if(Global.dia >= 7):
			$ParallaxBackground/ParallaxLayer/Button_Teste2.visible = true
	
	#Valor da nota do primeiro teste
	var nota1 = 0
	#Valor da nota do segundo teste
	var nota2 = 0
	nota1 = Global.testeA[0]+Global.testeA[1]+Global.testeA[2] #Valor total da nota do primeiro teste
	nota2 = Global.testeB[0]+Global.testeB[1]+Global.testeB[2] #Valor total da Nota do segundo teste
	#O usuário visualiza a nota que recebeu no primeiro teste
	$ParallaxBackground/ParallaxLayer/Button_Teste1/Sprite/Nota1.text = str(nota1)
	#O usuário visualiza a nota que recebeu no segundo teste
	$ParallaxBackground/ParallaxLayer/Button_Teste2/Sprite/Nota2.text = str(nota2)

#Ao pressionar o botao, o jogador é direcionado a página do primeiro teste
func _on_Button_Teste1_pressed():
	get_tree().change_scene("res://Faculdade/teste1.tscn")

#Ao pressionar o botao, o jogador é direcionado a página do segundo teste
func _on_Button_Teste2_pressed():
	get_tree().change_scene("res://Faculdade/teste2.tscn")

#Ao pressionar o botao, o jogador é direcionado a home
func _on_Voltar_pressed():
	get_tree().change_scene("res://Faculdade/home_faculdade.tscn")
