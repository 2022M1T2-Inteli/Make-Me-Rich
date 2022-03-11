extends Button



func _on_comprar_mouse_entered():
	$CaixaComprar.modulate.r = 0.7
	$CaixaComprar.modulate.g = 0.7
	$CaixaComprar.modulate.b = 0.7



func _on_comprar_mouse_exited():
	$CaixaComprar.modulate.r = 1
	$CaixaComprar.modulate.g = 1
	$CaixaComprar.modulate.b = 1
