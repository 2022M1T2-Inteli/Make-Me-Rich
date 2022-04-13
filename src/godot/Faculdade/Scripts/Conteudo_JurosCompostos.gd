extends Node2D

func _ready():
	pass 
	
func _on_Button_pressed():
	#A variável recebe o valor 1, para confirmar a realizacao das atividades
	Global.JurosCompostos = 1
	#Ao pressionar o botao, o jogador é direcionado a pagina de conteúdos 
	get_tree().change_scene("res://Faculdade/Conteudo.tscn")
	if(Global.conteudoCompleto < 4):
		#Aumento da barra de progresso dos conteúdos, referente a esse conteúdo
		Global.conteudoCompleto += 1
