extends CanvasLayer

signal start_game #Sinal para quando o jogo comecar

onready var score_container: Control = get_node("ScoreConteiner") #Variavel para ter referencias aos objetos, para modificar o score do personagem 
onready var button_conteiner: Control = get_node("MessageConteiner") #Serve para saber quais botoes foram pressionados

func _ready():
	for button in button_conteiner.get_children():
		button.connect("pressed", self, "on_button_pressed", [button]) #Receber qual botao é, por parametro

func on_button_pressed(button: Button) -> void:
	match button.name:
		"Button":
			button_conteiner.get_node("Button").hide()
			score_container.show()
			emit_signal("start_game") #Emite sinal de inicio de jogo
			#Ao pressionar o botao, o jogador é direcionado a task
			get_tree().change_scene("res://Main.tscn")
