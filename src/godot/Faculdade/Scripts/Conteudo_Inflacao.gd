extends Node2D

func _ready():
	pass 

func _on_Confirma_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo.tscn")
	Global.Inflacao = 1
	if(Global.conteudoCompleto < 2):
		Global.conteudoCompleto += 1
