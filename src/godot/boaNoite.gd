extends Node2D



func _ready():
	yield(get_tree().create_timer(3), "timeout")
	get_tree().change_scene("res://Node2D.tscn")
	Global.menosFeliz = 100
	Global.horas = 6
	Global.minutos = 00
	Global.dia += 1
