extends Node2D

func _ready():
	pass 
	
func _process(delta):
	if(Global.atividade_JurosSimples[0] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p1.visible = false
		Global.atividade3[0] = 1 
		$ParallaxBackground/ParallaxLayer/respostaCerta1.visible = true
	elif(Global.atividade_JurosSimples[1] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p1.visible = false
		$ParallaxBackground/ParallaxLayer/erro1.visible = true
		
	if(Global.atividade_JurosSimples[2] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p2.visible = false
		$ParallaxBackground/ParallaxLayer/erro2.visible = true
	elif(Global.atividade_JurosSimples[3] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p2.visible = false
		Global.atividade3[1] = 1 
		$ParallaxBackground/ParallaxLayer/respostaCerta2.visible = true
		
	if(Global.atividade_JurosSimples[4] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p3.visible = false
		Global.atividade3[2] = 1 
		$ParallaxBackground/ParallaxLayer/respostaCerta3.visible = true
	elif(Global.atividade_JurosSimples[5] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p3.visible = false
		$ParallaxBackground/ParallaxLayer/erro3.visible = true
	var total = 0
	total = Global.atividade3[0]+Global.atividade3[1]+Global.atividade3[2]
	$ParallaxBackground/ParallaxLayer/acertos.text = str(total)

func _on_resposta1_p1_pressed():
	Global.atividade_JurosSimples[0] = true

func _on_resposta2_p1_pressed():
	Global.atividade_JurosSimples[1] = true

func _on_resposta1_p2_pressed():
	Global.atividade_JurosSimples[2] = true

func _on_resposta2_p2_pressed():
	Global.atividade_JurosSimples[3] = true

func _on_resposta1_p3_pressed():
	Global.atividade_JurosSimples[4] = true

func _on_resposta2_p3_pressed():
	Global.atividade_JurosSimples[5] = true

func _on_voltar_pressed():
	get_tree().change_scene("res://Faculdade/page_Atividade.tscn")
	if(Global.atividadeCompleta < 3):
		Global.atividadeCompleta += 1
