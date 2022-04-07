extends Node2D

func _ready():
	pass 

func _on_Button_pressed():
	Global.JurosSimples = 1
	get_tree().change_scene("res://Faculdade/Conteudo.tscn")
	if(Global.conteudoCompleto < 3):
		Global.conteudoCompleto += 1
