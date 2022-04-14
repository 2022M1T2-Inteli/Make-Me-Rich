extends Node2D

#seleciona o personagem no menu

func _on_personagemA_pressed():
	Global.selecPersonagem = 1
	get_tree().change_scene("res://Node2D.tscn")
func _on_personagemB_pressed():
	Global.selecPersonagem = 2
	get_tree().change_scene("res://Node2D.tscn")
func _on_personagemC_pressed():
	Global.selecPersonagem = 3
	get_tree().change_scene("res://Node2D.tscn")
func _on_personagemD_pressed():
	Global.selecPersonagem = 4
	get_tree().change_scene("res://Node2D.tscn")
