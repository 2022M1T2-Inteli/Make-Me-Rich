extends Node2D

func _ready():
	pass 
	
func _on_Button_pressed():
	Global.JurosCompostos = 1
	get_tree().change_scene("res://Faculdade/Conteudo.tscn")
	if(Global.conteudoCompleto < 4):
		Global.conteudoCompleto += 1
