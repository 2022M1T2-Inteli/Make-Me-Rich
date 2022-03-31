extends Panel

func _ready():
	refresh_label()


func refresh_label():
	$CenterContainer/Label.text = ("Money: " + String(Global.dinheiro))

func add_money(gain):
	Global.dinheiro += gain
	refresh_label()

func sub_money(loss):
	Global.dinheiro -= loss
	if Global.dinheiro < 0: Global.dinheiro = 0
	refresh_label()

func can_pay(cost):
	var can = (Global.dinheiro - cost) >= 0
	return can
