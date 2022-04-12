extends Node2D
#toca a musia no menu
func _ready():
	$musica.play()

#muda para os créditos
func _on_botaoSobre_pressed():
	get_tree().change_scene("res://sobre.tscn")
