extends Button

#deixa o botao mais escuro
func _on_investimentos_mouse_entered():
	$CaixaInvestir.modulate.r = 0.7
	$CaixaInvestir.modulate.g = 0.7
	$CaixaInvestir.modulate.b = 0.7
	

#volta o botao ao normal
func _on_investimentos_mouse_exited():
	$CaixaInvestir.modulate.r = 1
	$CaixaInvestir.modulate.g = 1
	$CaixaInvestir.modulate.b = 1
	

#muda para a tela de investimentos
func _on_investimentos_pressed():
	get_tree().change_scene("res://Investir.tscn")
