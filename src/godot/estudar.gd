extends Button


func _on_estudar_mouse_entered():
	$CaixaEstudar.modulate.r = 0.7
	$CaixaEstudar.modulate.g = 0.7
	$CaixaEstudar.modulate.b = 0.7
	


func _on_estudar_mouse_exited():
	$CaixaEstudar.modulate.r = 1
	$CaixaEstudar.modulate.g = 1
	$CaixaEstudar.modulate.b = 1



func _on_estudar_pressed():
	get_tree().change_scene("res://Estudar.tscn")
