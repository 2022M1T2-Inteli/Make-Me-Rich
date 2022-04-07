extends Node2D

func _ready():
	$ValoresEconomia/valorInflacao.text = str(Global.valorInflacao) + "%"
	$ValoresEconomia/valorTaxaSelic.text = str(Global.valorTaxaSelic) + "%"
	$ValoresEconomia/valorDolar.text = str(Global.valorDolar)
	$ValoresEconomia/valorEuro.text = str(Global.valorEuro)
	if(Global.selecPersonagem == 1):
		$Control/personagem1.visible = true
	elif(Global.selecPersonagem == 2):
		$Control/personagem2.visible = true
	elif(Global.selecPersonagem == 3):
		$Control/personagem3.visible = true
	else:
		$Control/Personagem4.visible = true

func _process(delta):
	$CanvasLayer/Progress_Conteudo.value = Global.conteudoCompleto
	$CanvasLayer/Progress_Atividade.value = Global.atividadeCompleta
	$CanvasLayer/Progress_Teste.value = Global.testeCompleto

func _on_Voltar_pressed():
	get_tree().change_scene("res://Faculdade/Faculdade.tscn")

func _on_Conteudo_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo.tscn")

func _on_Atividade_pressed():
	get_tree().change_scene("res://Faculdade/page_Atividade.tscn")

func _on_Teste_pressed():
	get_tree().change_scene("res://Faculdade/page_Teste.tscn")
