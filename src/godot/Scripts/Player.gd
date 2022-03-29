extends Panel

var money = Global.dinheiro

func _ready():
	refresh_label()


func refresh_label():
	get_node("CenterContainer/Label").text = ("Money: " + String(money))

func add_money(gain):
	money += gain
	refresh_label()

func sub_money(loss):
	money -= loss
	if money < 0: money = 0
	refresh_label()

func can_pay(cost):
	var can = (money - cost) >= 0
	return can
