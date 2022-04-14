extends CanvasLayer
#Quando o botão é apertado para de mostrar o tutorial do jogo dos fios.
func _on_next_pressed():
	$tutorial.visible = false
	$next.visible = false
	$jogar.visible = false
