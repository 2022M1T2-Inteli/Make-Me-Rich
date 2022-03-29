extends Node2D
var C = Global.dinheiro
var i = 0.25
var J = C*i*(Global.dia - 1)
var investir = 0
#mostra o dinheiro na tela 

func _ready():
	$computador/dinheiroPC.text = "R$" + str(Global.dinheiro)
	$computador/conta.text = "R$" + str(Global.conta)


#ganha dinheiro
func _on_ganharDinheiro_pressed():
	Global.conta += J
	$computador/dinheiroPC.text = "R$" + str(Global.dinheiro)
	$computador/conta.text = "R$" + str(Global.conta)
	if Global.dinheiro >= float($computador/extrairDinheiro.text):
		Global.conta += float($computador/extrairDinheiro.text)
		Global.dinheiro -= float($computador/extrairDinheiro.text)
		$computador/dinheiroPC.text = "R$" + str(Global.dinheiro)
		$computador/conta.text = "R$" + str(Global.conta)
		
	#dinheiro volta pra mao
func _on_perderDinheiro_pressed():
	$computador/dinheiroPC.text = "R$" + str(Global.dinheiro)
	$computador/conta.text = "R$" + str(Global.conta)
	if Global.conta >= float($computador/mao.text):
		Global.conta -= float($computador/mao.text)
		Global.dinheiro += float($computador/mao.text)
		$computador/dinheiroPC.text = "R$" + str(Global.dinheiro)
		$computador/conta.text = "R$" + str(Global.conta)
#volta pra tela inicial
func _on_voltar_pressed():
	get_tree().change_scene("res://Cena_computador.tscn")


func _on_ganharDinheiro_mouse_entered():
	$computador/Depositar.modulate.r = 0.7
	$computador/Depositar.modulate.g = 0.7
	$computador/Depositar.modulate.b = 0.7


func _on_ganharDinheiro_mouse_exited():
	$computador/Depositar.modulate.r = 1
	$computador/Depositar.modulate.g = 1
	$computador/Depositar.modulate.b = 1


func _on_perderDinheiro_mouse_entered():
	$computador/Sacar.modulate.r = 0.7
	$computador/Sacar.modulate.g = 0.7
	$computador/Sacar.modulate.b = 0.7


func _on_perderDinheiro_mouse_exited():
	$computador/Sacar.modulate.r = 1
	$computador/Sacar.modulate.g = 1
	$computador/Sacar.modulate.b = 1
