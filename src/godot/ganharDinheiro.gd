extends Button

func _ready():
	$dinheiroPC.text = "R$" + str(Global.dinheiro)


	Global.dinheiro += 50
	$dinheiro.text = "R$" + str(Global.dinheiro)
