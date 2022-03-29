extends Button


#quando o mouse passa por cima do botao, a cor dele muda
func _on_new_mouse_entered():
	$botao_new.modulate.r = 0.7
	$botao_new.modulate.g = 0.7
	$botao_new.modulate.b = 0.7
	
# a cor dele volta ao normal
func _on_new_mouse_exited():
	$botao_new.modulate.r = 1
	$botao_new.modulate.g = 1
	$botao_new.modulate.b = 1

#quando clica no botao a cena muda
func _on_new_pressed():
	get_tree().change_scene("res://seleçãoDePersonagem.tscn")
