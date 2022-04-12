extends CanvasLayer

# Mostra o dinheiro na tela.
func _process(delta):
	$DinheiroPlayer.text = "R$" + str (Global.dinheiro)
