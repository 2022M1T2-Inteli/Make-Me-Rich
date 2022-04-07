extends Node2D

func _ready():
	pass

func _process(delta):
	if(Global.teste1[0] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p1.visible = false
		Global.testeA[0] = 3.3 
		$ParallaxBackground/ParallaxLayer/respostaCerta1.visible = true
	elif(Global.teste1[1] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p1.visible = false
		$ParallaxBackground/ParallaxLayer/erro1.visible = true	
	
	if(Global.teste1[2] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p2.visible = false
		$ParallaxBackground/ParallaxLayer/erro2.visible = true
	elif(Global.teste1[3] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p2.visible = false
		Global.testeA[1] = 3.3
		$ParallaxBackground/ParallaxLayer/respostaCerta2.visible = true
		
	if(Global.teste1[4] == true):
		$ParallaxBackground/ParallaxLayer/resposta2_p3.visible = false
		Global.testeA[2] = 3.4
		$ParallaxBackground/ParallaxLayer/respostaCerta3.visible = true
	elif(Global.teste1[5] == true):
		$ParallaxBackground/ParallaxLayer/resposta1_p3.visible = false
		$ParallaxBackground/ParallaxLayer/erro3.visible = true

func _on_resposta1_p1_pressed():
	Global.teste1[0] = true

func _on_resposta2_p1_pressed():
	Global.teste1[1] = true

func _on_resposta1_p2_pressed():
	Global.teste1[2] = true

func _on_resposta2_p2_pressed():
	Global.teste1[3] = true

func _on_resposta1_p3_pressed():
	Global.teste1[4] = true

func _on_resposta2_p3_pressed():
	Global.teste1[5] = true

func _on_voltar_pressed():
	get_tree().change_scene("res://Faculdade/page_Teste.tscn")
	if(Global.testeCompleto < 1):
		Global.testeCompleto += 1
