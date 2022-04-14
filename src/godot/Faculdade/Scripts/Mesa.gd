extends Node2D

func _ready():
	pass 

#Ao pressionar o botao “Iniciar", o jogador é direcionado a home do tablet 
func _on_Button_pressed():
	get_tree().change_scene("res://Faculdade/home_faculdade.tscn")

#Ao pressionar o botao, o jogador é direcionado para sala de aula 
func _on_Sair_pressed():
	get_tree().change_scene("res://Node2D.tscn")
	Global.posicao = "faculdade"
