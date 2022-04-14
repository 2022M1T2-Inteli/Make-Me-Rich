extends Node2D

func _ready():
	#Se a variável abaixo for igual a 1, a textura do conteúdo "Matemática Financeira" concluído fica visível
	if(Global.MatFin == 1):
		$ParallaxBackground/Button_MatFin/TextureRect.visible = true
	#Se a variável abaixo for igual a 1, a textura do conteúdo "Inflacao" concluído fica visível
	if(Global.Inflacao == 1):
		$ParallaxBackground/Button_Inflacao/TextureRect.visible = true
	#Se a variável abaixo for igual a 1, a textura do conteúdo "Juros Simples" concluído fica visível
	if(Global.JurosSimples == 1):
		$ParallaxBackground/Button_JurosSimples/TextureRect.visible = true
	#Se a variável abaixo for igual a 1, a textura do conteúdo "Juros compostos" concluído fica visível
	if(Global.JurosCompostos == 1):
		$ParallaxBackground/Button_JurosCompostos/TextureRect.visible = true	
	#Se a variável abaixo for igual a 1, a textura do conteúdo "Renda Fixa" concluído fica visível
	if(Global.RF == 1):
		$ParallaxBackground/Button_RendaFixa/TextureRect.visible = true
	#Se a variável abaixo for igual a 1, a textura do conteúdo "Fundos de Investimentos" concluído fica visível
	if(Global.FI == 1):
		$ParallaxBackground/Button_FI/TextureRect.visible = true
	
	#Conforme os dias os botoes sao liberados para o usuário acessar determinados conteúdos
	if(Global.dia >= 1):
		$ParallaxBackground/Button_Inflacao.visible = true
		if(Global.dia >= 2):
			$ParallaxBackground/Button_JurosSimples.visible = true
			if(Global.dia >= 4):
				$ParallaxBackground/Button_JurosCompostos.visible = true
				if(Global.dia >= 5):
					$ParallaxBackground/Button_RendaFixa.visible = true
					if(Global.dia >= 6):
						$ParallaxBackground/Button_FI.visible = true

#Ao pressionar o botao, o jogador é direcionado a home
func _on_Voltar_pressed():
	get_tree().change_scene("res://Faculdade/home_faculdade.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de conteúdos sobre Matemática Financeira
func _on_Button_MatFin_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_MatFin.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de conteúdos sobre Inflacao
func _on_Button_Inflacao_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_Inflacao.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de conteúdos sobre Juros Simples
func _on_Button_JurosSimples_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_proxJurosSimples.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de conteúdos sobre Juros Compostos
func _on_Button_JurosCompostos_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_proxJurosCompostos.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de conteúdos sobre Renda Fixa
func _on_Button_RendaFixa_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_proxRendaFixa.tscn")

#Ao pressionar o botao, o jogador é direcionado a página de conteúdos sobre Fundos de Investimentos
func _on_Button_FI_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_proxFundos.tscn")
