extends Panel

func _ready():
	refresh_label()


func refresh_label():
	get_node("CenterContainer/Label").text = ("R$ " + String(Global.dinheiro))

func add_money(ganhar):
	Global.dinheiro += ganhar
	refresh_label()

#Somar ou descontar dinheiro no contador global

func sub_money(perde):
	Global.dinheiro -= perde
	if Global.dinheiro < 0: Global.dinheiro = 0
	refresh_label()

func can_pay(custo):
	var pode = (Global.dinheiro - custo) >= 0
	return pode
