extends Button



func _on_investimentos_mouse_entered():
	$CaixaInvestir.modulate.r = 0.7
	$CaixaInvestir.modulate.g = 0.7
	$CaixaInvestir.modulate.b = 0.7
	


func _on_investimentos_mouse_exited():
	$CaixaInvestir.modulate.r = 1
	$CaixaInvestir.modulate.g = 1
	$CaixaInvestir.modulate.b = 1
	
