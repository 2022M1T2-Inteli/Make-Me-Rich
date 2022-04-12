extends Control

signal is_stopped

#Função para dar início as animações

func _ready():
	get_node("../").register_wheel(self.name)
	pass 


func start_wheel():
	get_node("AnimatedSprite").play("Rolling")
	pass


func set_index(indice):
	if indice <= 2:
		get_node("AnimatedSprite").set_frame(indice)


func get_index():
	return get_node("AnimatedSprite").get_frame()


func _on_Button_pressed():
	get_node("AnimatedSprite").stop()
	emit_signal("is_stopped", self.name, get_node("AnimatedSprite").frame)
	pass
