extends Node2D

func _ready():
	if(Global.MatFin == 1):
		$ParallaxBackground/Button_MatFin/TextureRect.visible = true
	if(Global.Inflacao == 1):
		$ParallaxBackground/Button_Inflacao/TextureRect.visible = true
	if(Global.JurosSimples == 1):
		$ParallaxBackground/Button_JurosSimples/TextureRect.visible = true
	if(Global.JurosCompostos == 1):
		$ParallaxBackground/Button_JurosCompostos/TextureRect.visible = true	
	if(Global.RF == 1):
		$ParallaxBackground/Button_RendaFixa/TextureRect.visible = true
	if(Global.FI == 1):
		$ParallaxBackground/Button_FI/TextureRect.visible = true
	
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

func _on_Voltar_pressed():
	get_tree().change_scene("res://Faculdade/home_faculdade.tscn")

func _on_Button_MatFin_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_MatFin.tscn")

func _on_Button_Inflacao_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_Inflacao.tscn")

func _on_Button_JurosSimples_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_proxJurosSimples.tscn")

func _on_Button_JurosCompostos_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_proxJurosCompostos.tscn")

func _on_Button_RendaFixa_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_proxRendaFixa.tscn")

func _on_Button_FI_pressed():
	get_tree().change_scene("res://Faculdade/Conteudo_proxFundos.tscn")
