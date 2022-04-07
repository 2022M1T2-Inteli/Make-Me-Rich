extends Node2D

func _ready():
	pass

func _process(delta):
	if(Global.atividade_MatFin[0] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p1.visible = false
		$ParallaxBackground/ParallaxLayer/erro_p1.visible = true
	elif(Global.atividade_MatFin[1] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p1.visible = false
		Global.atividade1[0] = 1 
		$ParallaxBackground/ParallaxLayer/pergunta1.visible = true
		
	if(Global.atividade_MatFin[2] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p2.visible = false
		Global.atividade1[1] = 1 
		$ParallaxBackground/ParallaxLayer/pergunta2.visible = true
	elif(Global.atividade_MatFin[3] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p2.visible = false
		$ParallaxBackground/ParallaxLayer/erro_p2.visible = true
		
	if(Global.atividade_MatFin[4] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p3.visible = false
		Global.atividade1[2] = 1 
		$ParallaxBackground/ParallaxLayer/pergunta3.visible = true
	elif(Global.atividade_MatFin[5] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p3.visible = false
		$ParallaxBackground/ParallaxLayer/erro_p3.visible = true
		
	if(Global.atividade_MatFin[6] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p4.visible = false
		$ParallaxBackground/ParallaxLayer/erro_p4.visible = true
	elif(Global.atividade_MatFin[7] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p4.visible = false
		Global.atividade1[3] = 1 
		$ParallaxBackground/ParallaxLayer/pergunta4.visible = true
	var total = 0
	total = Global.atividade1[0]+Global.atividade1[1]+Global.atividade1[2]+Global.atividade1[3]
	$ParallaxBackground/ParallaxLayer/acertos.text = str(total)	

func _on_resposta1_p1_pressed():
	Global.atividade_MatFin[0] = true

func _on_resposta2_p1_pressed():
	Global.atividade_MatFin[1] = true

func _on_resposta1_p2_pressed():
	Global.atividade_MatFin[2] = true

func _on_resposta2_p2_pressed():
	Global.atividade_MatFin[3] = true

func _on_resposta1_p3_pressed():
	Global.atividade_MatFin[4] = true

func _on_resposta2_p3_pressed():
	Global.atividade_MatFin[5] = true

func _on_resposta1_p4_pressed():
	Global.atividade_MatFin[6] = true

func _on_resposta2_p4_pressed():
	Global.atividade_MatFin[7] = true

func _on_voltar_pressed():
	get_tree().change_scene("res://Faculdade/page_Atividade.tscn")
	if(Global.atividadeCompleta < 1):
		Global.atividadeCompleta += 1
