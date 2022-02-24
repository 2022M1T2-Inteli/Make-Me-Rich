extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var deslocamento = 0
var botao = 0 
# Called when the node enters the scene tree for the first time.(apenas uma vez)
func _ready():
	$Label.text = "boa noite bruno aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#O sistema de coordenadas nos jogos eh invertido no eixo y
