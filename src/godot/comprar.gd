extends Button


#deixa o botao mais escuro
func _on_comprar_mouse_entered():
	$CaixaComprar.modulate.r = 0.7
	$CaixaComprar.modulate.g = 0.7
	$CaixaComprar.modulate.b = 0.7


#volta o botao ao normal
func _on_comprar_mouse_exited():
	$CaixaComprar.modulate.r = 1
	$CaixaComprar.modulate.g = 1
	$CaixaComprar.modulate.b = 1
