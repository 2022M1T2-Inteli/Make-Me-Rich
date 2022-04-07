extends Node2D

func _ready():
	pass 

func _process(delta):
	if(Global.atividade_JurosCompostos[0] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p1.visible = false
		$ParallaxBackground/ParallaxLayer/erro1.visible = true
	elif(Global.atividade_JurosCompostos[1] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p1.visible = false
		Global.atividade4[0] = 1 
		$ParallaxBackground/ParallaxLayer/respostaCerta1.visible = true
	
	if(Global.atividade_JurosCompostos[2] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p2.visible = false
		Global.atividade4[1] = 1 
		$ParallaxBackground/ParallaxLayer/respostaCerta2.visible = true
	elif(Global.atividade_JurosCompostos[3] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p2.visible = false
		$ParallaxBackground/ParallaxLayer/erro2.visible = true
		
	if(Global.atividade_JurosCompostos[4] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p3.visible = false
		Global.atividade4[2] = 1 
		$ParallaxBackground/ParallaxLayer/respostaCerta3.visible = true
	elif(Global.atividade_JurosCompostos[5] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p3.visible = false
		$ParallaxBackground/ParallaxLayer/erro3.visible = true
		
	if(Global.atividade_JurosCompostos[6] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p4.visible = false
		Global.atividade4[3] = 1 
		$ParallaxBackground/ParallaxLayer/respostaCerta4.visible = true
	elif(Global.atividade_JurosCompostos[7] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p4.visible = false
		$ParallaxBackground/ParallaxLayer/erro4.visible = true
	var total = 0
	total = Global.atividade4[0]+Global.atividade4[1]+Global.atividade4[2]+Global.atividade4[3]
	$ParallaxBackground/ParallaxLayer/acertos.text = str(total)

func _on_resposta1_p1_pressed():
	Global.atividade_JurosCompostos[0] = true

func _on_resposta2_p1_pressed():
	Global.atividade_JurosCompostos[1] = true

func _on_resposta1_p2_pressed():
	Global.atividade_JurosCompostos[2] = true

func _on_resposta2_p2_pressed():
	Global.atividade_JurosCompostos[3] = true

func _on_resposta1_p3_pressed():
	Global.atividade_JurosCompostos[4] = true

func _on_resposta2_p3_pressed():
	Global.atividade_JurosCompostos[5] = true

func _on_resposta1_p4_pressed():
	Global.atividade_JurosCompostos[6] = true

func _on_resposta2_p4_pressed():
	Global.atividade_JurosCompostos[7] = true

func _on_voltar_pressed():
	get_tree().change_scene("res://Faculdade/page_Atividade.tscn")
	if(Global.atividadeCompleta < 4):
		Global.atividadeCompleta += 1
