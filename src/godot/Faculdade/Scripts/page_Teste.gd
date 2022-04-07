extends Node2D

func _ready():
	if(Global.dia >= 3):
		$ParallaxBackground/ParallaxLayer/Button_Teste1.visible = true
		if(Global.dia >= 7):
			$ParallaxBackground/ParallaxLayer/Button_Teste2.visible = true
	
	var nota1 = 0
	var nota2 = 0
	nota1 = Global.testeA[0]+Global.testeA[1]+Global.testeA[2]
	nota2 = Global.testeB[0]+Global.testeB[1]+Global.testeB[2]
	$ParallaxBackground/ParallaxLayer/Button_Teste1/Sprite/Nota1.text = str(nota1)
	$ParallaxBackground/ParallaxLayer/Button_Teste2/Sprite/Nota2.text = str(nota2)

func _on_Button_Teste1_pressed():
	get_tree().change_scene("res://Faculdade/teste1.tscn")

func _on_Button_Teste2_pressed():
	get_tree().change_scene("res://Faculdade/teste2.tscn")

func _on_Voltar_pressed():
	get_tree().change_scene("res://Faculdade/home_faculdade.tscn")
