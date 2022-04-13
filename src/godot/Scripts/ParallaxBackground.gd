extends ParallaxBackground

onready var background_texture: TextureRect = get_node("Background/Texture")#Variavel de referencia a textura

export(int) var scenario_speed
func _ready():
	pass 
	
func _physics_process(delta): 
	for children in get_children(): #Lista de filhos do objeto especificado / Ira retornar background
		children.motion_offset 
		if children is ParallaxLayer: #Se for desse tipo faca
			children.motion_offset.y += scenario_speed * delta 

