extends Node2D
#o codigo faz com que volte pra tela principal do computador 
func _process(delta):
	if Input.is_action_pressed("x"):
		get_tree().change_scene("res://Cena_computador.tscn")
