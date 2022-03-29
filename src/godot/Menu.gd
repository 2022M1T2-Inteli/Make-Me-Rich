extends CanvasLayer

#variavel que controla a seta

onready var select_arrow = $Control/NinePatchRect/TextureRect
onready var menu = $Control

enum ScreenLoaded {NOTHING, JUST_MENU}
var screen_loaded = ScreenLoaded.NOTHING

var selected_option: int = 0

func _ready():
	menu.visible = false
	select_arrow.rect_position.y = 10 + (selected_option % 6) * 35

func _unhandled_input(event):
	#abre o menu
	match screen_loaded:
		ScreenLoaded.NOTHING:
			if event.is_action_pressed("interacao"):
				menu.visible = true
				screen_loaded = ScreenLoaded.JUST_MENU
				
		#Fecha o menu
		ScreenLoaded.JUST_MENU:
			if event.is_action_pressed("interacao") or event.is_action_pressed("x"):
				menu.visible = false
				screen_loaded = ScreenLoaded.NOTHING
			#faz a seta ir pra baixo
			elif event.is_action_pressed("ui_down"):
				selected_option += 1 
				select_arrow.rect_position.y = 10 + (selected_option % 6) * 35
				
				pass
				#faz a seta ir pra cima
			elif event.is_action_pressed("ui_up"):
				if selected_option == 0:
					selected_option = 5
					
				else :
					selected_option -= 1
				select_arrow.rect_position.y = 10 + (selected_option % 6) * 35
