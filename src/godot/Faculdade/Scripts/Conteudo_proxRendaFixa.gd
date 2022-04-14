extends Node2D

func _ready():
	pass 
	
func _on_Button_pressed():
	#Ao pressionar o botao, o jogador é direcionado a próxima página do conteúdo de Renda Fixa
	get_tree().change_scene("res://Faculdade/Conteudo_RendaFixa.tscn")
