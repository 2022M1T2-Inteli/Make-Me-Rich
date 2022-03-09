extends Button


#quando o mouse passa por cima do botao, a cor dele muda
func _on_start_mouse_entered():
	$botao_start.modulate.r = 0.7
	$botao_start.modulate.g = 0.7
	$botao_start.modulate.b = 0.7
	
# a cor dele volta ao normal
func _on_start_mouse_exited():
	$botao_start.modulate.r = 1
	$botao_start.modulate.g = 1
	$botao_start.modulate.b = 1

#quando clica no botao a cena muda
func _on_start_pressed():
	get_tree().change_scene("res://load_new.tscn")
