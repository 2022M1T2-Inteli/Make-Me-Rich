extends Node2D

#código do card do computador
var contador = 0
func _on_NExt_pressed():
	contador += 1
	if contador % 2 == 1:
		$"Aula1/Tela Preta".visible = true
		$"Aula1/Parece azul".visible = false
	elif contador % 2 == 0:
		$"Aula1/Tela Preta".visible = false
		$"Aula1/Parece azul".visible = true
		
