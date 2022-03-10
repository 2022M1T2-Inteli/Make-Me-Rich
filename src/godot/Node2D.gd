extends Node2D

#código do card do computador

var cont = 0
func _on_NExt_pressed():
	cont += 1
	if cont % 2 == 1:
		$"Aula1/Tela Preta".visible = true
		$"Aula1/Parece azul".visible = false
	elif cont % 2 == 0:
		$"Aula1/Tela Preta".visible = false
		$"Aula1/Parece azul".visible = true
		
