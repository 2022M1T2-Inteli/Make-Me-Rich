extends Node2D

func _ready():
	pass 
	
func _process(delta):
	if(Global.atividade_Inflacao[0] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p1.visible = false
		$ParallaxBackground/ParallaxLayer/erro_p1.visible = true
	elif(Global.atividade_Inflacao[1] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p1.visible = false
		Global.atividade2[0] = 1 
		$ParallaxBackground/ParallaxLayer/respostaCerta1.visible = true
	
	if(Global.atividade_Inflacao[2] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p2.visible = false
		Global.atividade2[1] = 1 
		$ParallaxBackground/ParallaxLayer/respostaCerta2.visible = true
	elif(Global.atividade_Inflacao[3] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p2.visible = false
		$ParallaxBackground/ParallaxLayer/erro_p2.visible = true

	if(Global.atividade_Inflacao[4] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p3.visible = false
		$ParallaxBackground/ParallaxLayer/erro_p3.visible = true
	elif(Global.atividade_Inflacao[5] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p3.visible = false
		Global.atividade2[2] = 1 
		$ParallaxBackground/ParallaxLayer/respostaCerta3.visible = true
	var total = 0
	total = Global.atividade2[0]+Global.atividade2[1]+Global.atividade2[2]
	$ParallaxBackground/ParallaxLayer/acertos.text = str(total)

func _on_resposta1_p1_pressed():
	Global.atividade_Inflacao[0] = true

func _on_resposta2_p1_pressed():
	Global.atividade_Inflacao[1] = true

func _on_resposta1_p2_pressed():
	Global.atividade_Inflacao[2] = true

func _on_resposta2_p2_pressed():
	Global.atividade_Inflacao[3] = true

func _on_resposta1_p3_pressed():
	Global.atividade_Inflacao[4] = true

func _on_resposta2_p3_pressed():
	Global.atividade_Inflacao[5] = true

func _on_voltar_pressed():
	get_tree().change_scene("res://Faculdade/page_Atividade.tscn")
	if(Global.atividadeCompleta < 2):
		Global.atividadeCompleta += 1
