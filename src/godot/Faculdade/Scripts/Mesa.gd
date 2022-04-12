extends Node2D

func _ready():
	pass 

func _on_Button_pressed():
	get_tree().change_scene("res://Faculdade/home_faculdade.tscn")

func _on_Sair_pressed():
	get_tree().change_scene("res://Node2D.tscn")
	Global.posicao = "faculdade"
