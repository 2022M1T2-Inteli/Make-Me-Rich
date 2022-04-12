extends Node

onready var interface: CanvasLayer = get_node("Interface") #Novo
onready var parralax_background: ParallaxBackground = get_node("ParallaxBackground") #Novo
const tipoProduto = preload("res://Produtos.tscn") #Dentro dessa variável carregar a cena Produto
var local = [402,474,546,618]

		

func start_game() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	$Control/Label.text = str(Global.ponto)
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
	
