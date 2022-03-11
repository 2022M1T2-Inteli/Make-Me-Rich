extends Button


func _on_conquistas_mouse_entered():
	$CaixaConquistas.modulate.r = 0.7
	$CaixaConquistas.modulate.g = 0.7
	$CaixaConquistas.modulate.b = 0.7


func _on_conquistas_mouse_exited():
	$CaixaConquistas.modulate.r = 1
	$CaixaConquistas.modulate.g = 1
	$CaixaConquistas.modulate.b = 1
