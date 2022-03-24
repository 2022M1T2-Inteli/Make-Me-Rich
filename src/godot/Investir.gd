extends Node2D
var C = Global.dinheiro
var i = 0.25
var J = C*i*Global.dia

#mostra o dinheiro na tela 
func _ready():
	$computador/dinheiroPC.text = "R$" + str(Global.dinheiro)
	$computador/conta.text = "R$" + str(Global.conta)
#ganha dinheiro
func _on_ganharDinheiro_pressed():
	Global.conta += float($computador/extrairDinheiro.text)
	Global.dinheiro -= float($computador/extrairDinheiro.text)
	$computador/dinheiroPC.text = "R$" + str(Global.dinheiro)
	$computador/conta.text = "R$" + str(Global.conta)
	#dinheiro volta pra mao
func _on_perderDinheiro_pressed():
	Global.conta -= float($computador/mao.text)
	Global.dinheiro += float($computador/mao.text)
	$computador/dinheiroPC.text = "R$" + str(Global.dinheiro)
	$computador/conta.text = "R$" + str(Global.conta)
#volta pra tela inicial
func _on_voltar_pressed():
	get_tree().change_scene("res://Cena_computador.tscn")
