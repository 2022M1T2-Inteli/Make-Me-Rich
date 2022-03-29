extends Node

onready var interface: CanvasLayer = get_node("Interface") #Novo
onready var parralax_background: ParallaxBackground = get_node("ParallaxBackground") #Novo

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const tipoProduto = preload("res://Produtos.tscn") #Dentro dessa variável carregar a cena Produto
var local = [36,108,180,252]

var score = 0 #Pontuacao
		

func start_game() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	$Control/Label.text = str(Global.score)
	$Control/Label2.text = str(30 - Global.tempo)
	var novoproduto = tipoProduto.instance()
	add_child_below_node(get_tree().root,novoproduto)
	move_child(novoproduto, 0)
	novoproduto.position.y = -72 #Da onde o produto parte 
	novoproduto.position.x = local[randi() % local.size()] #Posicao Y sempre aleatoria
	novoproduto.linear_velocity = Vector2(0,150) #Velocidade do produto

func _process(delta):
	Global.sent += delta
	
	if Global.sent >= 1:
		Global.tempo += 1
		Global.sent = 0
		
	if Global.tempo == 30:
		get_tree().change_scene("res://GameOver.tscn")
		Global.tempo = 0
	
