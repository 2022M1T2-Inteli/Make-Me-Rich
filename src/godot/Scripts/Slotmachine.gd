extends Panel

export var custoTentativa = 10 
export var multiplicador = 4

var todasRoletas = []
var roletasProntas = []

var ultimaGirada = []

func register_wheel(novaRoleta):
	get_node(novaRoleta).connect("is_stopped", self, "_on_wheel_is_stopped")
	
	
	randomize_wheel(novaRoleta)
	
	todasRoletas.insert(todasRoletas.size(), novaRoleta)
	roletasProntas.insert(roletasProntas.size(), novaRoleta)



func start_all_Wheels():
	for entry in todasRoletas:
		get_node(entry).start_wheel()
		roletasProntas.erase(entry)


func randomize_wheel(roleta):
	randomize()
	get_node(roleta).set_index(randi()%3)



func _on_StartButton_pressed():
	if get_node("../Player").can_pay(custoTentativa) && roletasProntas.size() == todasRoletas.size():
		get_node("../Player").sub_money(custoTentativa)
		start_all_Wheels()


func _on_wheel_is_stopped(roleta, valor):
	
	if !roletasProntas.has(roleta):
		roletasProntas.insert(roletasProntas.size(), roleta)
		ultimaGirada.insert(ultimaGirada.size(), valor)
	
	if ultimaGirada.size() >= todasRoletas.size():
		evaluate_player_roll()
		ultimaGirada.clear()
	

func evaluate_player_roll():
	var venceu = true
	var indice = 0
	var primeiroValor = ultimaGirada[0]
	
	for entry in todasRoletas:
		if primeiroValor == ultimaGirada[indice]:
			indice += 1	
		else:
			venceu = false
	
	if(venceu == true):
		print("Congratz! You win " + String(custoTentativa * multiplicador))
		get_node("../Player").add_money(custoTentativa * multiplicador)
	else:
		print("Nothing - try a next Spin!")
	
	pass
