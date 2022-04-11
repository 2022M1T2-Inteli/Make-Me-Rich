extends Node2D



func _on_botaoSair_pressed():
	get_tree().change_scene("res://Node2D.tscn")
	Global.posicao = "fabrica"
	Global.dinheiro += 13.50
