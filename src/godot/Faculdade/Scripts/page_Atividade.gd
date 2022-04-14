extends Node2D

func _ready():
	#Conforme os dias os botoes sao liberados para o usuário acessar determinadas atividades
	if(Global.dia >= 1):
		$ParallaxBackground/ParallaxLayer/atividade_Inflacao.visible = true
		if(Global.dia >= 2):
			$ParallaxBackground/ParallaxLayer/atividade_JS.visible = true
			if(Global.dia >= 4):
				$ParallaxBackground/ParallaxLayer/atividade_JC.visible = true
				if(Global.dia >= 5):
					$ParallaxBackground/ParallaxLayer/atividade_Renda.visible = true
					if(Global.dia >= 6):
						$ParallaxBackground/ParallaxLayer/atividade_FI.visible = true

func _process(delta):
	var total1 = 0
	total1 = Global.atividade1[0]+Global.atividade1[1]+Global.atividade1[2]+Global.atividade1[3] #O usuário visualiza a quantidade de respostas na qual acertou na atividade de Matemática Financeira
	$ParallaxBackground/ParallaxLayer/atividade_MatFin/Label.text = str(total1) + "/4"
	
	var total2 = 0
	total2 = Global.atividade2[0]+Global.atividade2[1]+Global.atividade2[2] #O usuário visualiza a quantidade de respostas na qual acertou na atividade de Inflacao
	$ParallaxBackground/ParallaxLayer/atividade_Inflacao/Label.text = str(total2) + "/3"
	
	var total3 = 0
	total3 = Global.atividade3[0]+Global.atividade3[1]+Global.atividade3[2] #O usuário visualiza a quantidade de respostas na qual acertou na atividade de Juros Simples
	$ParallaxBackground/ParallaxLayer/atividade_JS/Label.text = str(total3) + "/3"
	
	var total4 = 0
	total4 = Global.atividade4[0]+Global.atividade4[1]+Global.atividade4[2]+Global.atividade4[2] #O usuário visualiza a quantidade de respostas na qual acertou na atividade de Juros Compostos
	$ParallaxBackground/ParallaxLayer/atividade_JC/Label.text = str(total4) + "/4"
	
	var total5 = 0
	total5 = Global.atividade5[0]+Global.atividade5[1]+Global.atividade5[2] #O usuário visualiza a quantidade de respostas na qual acertou na atividade de Renda Fixa
	$ParallaxBackground/ParallaxLayer/atividade_Renda/Label.text = str(total5) + "/3"
	
	var total6 = 0
	total6 = Global.atividade6[0]+Global.atividade6[1]+Global.atividade6[2] #O usuário visualiza a quantidade de respostas na qual acertou na atividade de Fundos de Investimentos 
	$ParallaxBackground/ParallaxLayer/atividade_FI/Label.text = str(total6) + "/3"

#Ao pressionar o botao, o jogador é direcionado a home
func _on_Voltar_pressed():
	get_tree().change_scene("res://Faculdade/home_faculdade.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de atividades sobre Matemática Financeira
func _on_atividade_MatFin_pressed():
	get_tree().change_scene("res://Faculdade/atividade_MatFin.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de atividades sobre Inflacao
func _on_atividade_Inflacao_pressed():
	get_tree().change_scene("res://Faculdade/atividade_Inflacao.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de atividades sobre Juros Simples
func _on_atividade_JS_pressed():
	get_tree().change_scene("res://Faculdade/atividade_JurosSimples.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de atividades sobre Juros Compostos
func _on_atividade_JC_pressed():
	get_tree().change_scene("res://Faculdade/atividade_JurosCompostos.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de atividades sobre Renda Fixa
func _on_atividade_Renda_pressed():
	get_tree().change_scene("res://Faculdade/atividade_RendaFixa.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de atividades sobre Fundos de investimentos
func _on_atividade_FI_pressed():
	get_tree().change_scene("res://Faculdade/atividade_Fundos.tscn")
