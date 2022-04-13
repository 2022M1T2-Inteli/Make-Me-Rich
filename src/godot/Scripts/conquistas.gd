extends Button

#deixa o botao mais escuro
func _on_conquistas_mouse_entered():
	$CaixaConquistas.modulate.r = 0.7
	$CaixaConquistas.modulate.g = 0.7
	$CaixaConquistas.modulate.b = 0.7

#volta o botao ao normal
func _on_conquistas_mouse_exited():
	$CaixaConquistas.modulate.r = 1
	$CaixaConquistas.modulate.g = 1
	$CaixaConquistas.modulate.b = 1
