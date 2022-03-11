extends Node2D

func _process(delta):
	if Input.is_action_pressed("x"):
		get_tree().change_scene("res://Cena_computador.tscn")
