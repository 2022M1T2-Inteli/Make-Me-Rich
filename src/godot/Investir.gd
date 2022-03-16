extends Node2D
var C = Global.dinheiro - 1700
var i = 0.25
var t = 5
var J= C*i*t


func _ready():
	$computador/dinheiroPC.text = "R$" + str(Global.dinheiro)

func _on_ganharDinheiro_pressed():
	Global.dinheiro += J
	$computador/dinheiroPC.text = "R$" + str(Global.dinheiro)

func _process(delta):
	if Input.is_action_pressed("x"):
		get_tree().change_scene("res://Cena_computador.tscn")
