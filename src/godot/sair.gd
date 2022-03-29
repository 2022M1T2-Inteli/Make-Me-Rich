extends Button




func _on_sair_pressed():
	get_tree().change_scene("res://Node2D.tscn")
	Global.posicao = "cassino"
