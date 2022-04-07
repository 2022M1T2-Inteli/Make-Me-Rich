extends Node2D

func _ready():
	pass 

func _on_Button_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo.tscn")
	Global.RF = 1
	if(Global.conteudoCompleto < 5):
		Global.conteudoCompleto += 1
