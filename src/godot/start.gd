extends Button


#quando o mouse passa por cima do botao, a cor dele muda
func _on_start_mouse_entered():
	pass # Replace with function body.

# a cor dele volta ao normal
func _on_start_mouse_exited():
	pass # Replace with function body.

#quando clica no botao a cena muda
func _on_start_pressed():
	get_tree().change_scene("res://Node2D.tscn")
