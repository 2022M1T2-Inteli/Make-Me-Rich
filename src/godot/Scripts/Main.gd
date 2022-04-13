extends Node

#Fundo da cena
onready var interface: CanvasLayer = get_node("Interface")
onready var parralax_background: ParallaxBackground = get_node("ParallaxBackground")
const tipoProduto = preload("res://Produtos.tscn") #Dentro dessa variável é carregada a cena Produto
var local = [402,474,546,618] #Posicoes onde os produtos se movem

func start_game() -> void:
	pass

func _on_Timer_timeout():
	#Quantidade de produtos embalados
	$Control/Label.text = str(Global.ponto)
	#Tempo restante para o fim do jogo
	$Control/Label2.text = str(30 - Global.tempo)
	var novoProduto = tipoProduto.instance()
	add_child_below_node(get_tree().root,novoProduto)
	move_child(novoProduto, 0)
	novoProduto.position.y = -72 #Posicao da onde o produto parte 
	novoProduto.position.x = local[randi() % local.size()] #Posicao Y sempre aleatoria
	novoProduto.linear_velocity = Vector2(0,150) #Velocidade do produto

func _process(delta):
	#roda o relogio
	Global.sent += delta
	
	if Global.sent >= 1:
		Global.tempo += 1
		Global.sent = 0
		
	#Se tempo de jogo for igual a 30 a task é encerrada
	if Global.tempo == 30:
		#O usuário é direcionado a cena de game over
		get_tree().change_scene("res://GameOver.tscn")
		#A variável tempo é zerada
		Global.tempo = 0
	
