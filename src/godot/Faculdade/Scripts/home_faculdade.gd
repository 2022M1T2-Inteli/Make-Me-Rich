extends Node2D

func _ready():
	#Valor da Inflacao
	$ValoresEconomia/valorInflacao.text = str(Global.valorInflacao) + "%"
	#Valor da Taxa Selic
	$ValoresEconomia/valorTaxaSelic.text = str(Global.valorTaxaSelic) + "%"
	#Valor do Dólar
	$ValoresEconomia/valorDolar.text = str(Global.valorDolar)
	#Valor do Euro
	$ValoresEconomia/valorEuro.text = str(Global.valorEuro)
	#Torna visível na home a foto do personagem escolhido no início do jogo
	if(Global.selecPersonagem == 1):
		$Control/personagem1.visible = true
	elif(Global.selecPersonagem == 2):
		$Control/personagem2.visible = true
	elif(Global.selecPersonagem == 3):
		$Control/personagem3.visible = true
	else:
		$Control/Personagem4.visible = true

func _process(delta):
	#Barra de progresso dos conteúdos concluídos
	$CanvasLayer/Progress_Conteudo.value = Global.conteudoCompleto
	#Barra de progresso das atividades concluídas
	$CanvasLayer/Progress_Atividade.value = Global.atividadeCompleta
	#Barra de progresso das avaliacoes concluídas
	$CanvasLayer/Progress_Teste.value = Global.testeCompleto

#Ao pressionar o botao "Voltar", o jogador é direcionado a página inicial do tablet
func _on_Voltar_pressed():
	get_tree().change_scene("res://Faculdade/Faculdade.tscn")

#Ao pressionar o botao "Conteudo", o jogador é direcionado a página de conteúdos sobre matemática financeira e financas
func _on_Conteudo_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo.tscn")

#Ao pressionar o botao "Atividade", o jogador é direcionado a página de atividades, para responder perguntas sobre o conteúdo aprendido
func _on_Atividade_pressed():
	get_tree().change_scene("res://Faculdade/page_Atividade.tscn")

#Ao pressionar o botao "Teste", o jogador é direcionado a página de testes, para avaliar o que foi aprendido 
func _on_Teste_pressed():
	get_tree().change_scene("res://Faculdade/page_Teste.tscn")
