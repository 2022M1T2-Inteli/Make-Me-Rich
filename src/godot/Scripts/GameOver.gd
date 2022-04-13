extends CanvasLayer

#Porcentagem de produtos embalados (Levando em consideracao a meta inicial)
var porcentagem = (float(Global.ponto)/float(Global.meta))*100

#Valor ganho por produto embalado
var valorProduto = 1.35
func _ready():
	#O usuário visualiza o valor da meta
	$Control2/Meta.text = str(Global.meta)
	#O usuário visualiza a porcentagem de produtos embalados
	$Control2/Embalados.text = str(porcentagem) + "%"
	if(porcentagem >= 100):
		#Se a quantidade de produtos embalados for maior ou igual a 100, o usuário ganha 135 com a task
		Global.valor = 135
		#O usuário visualiza o valor total ganho com os produtos embalados
		$Control2/Valor.text = str(Global.valor)
	else:
		#Se a quantidade de produtos embalados for menor que 100, o usuário ganha o valor de produtos embalados multiplicado pelo valor de 1.35
		Global.valor = Global.ponto * valorProduto
		#O usuário visualiza o valor total ganho com os produtos embalados
		$Control2/Valor.text = "R$ " + str(Global.valor)

func _on_Button_pressed():
	#O personagem é direcionado a fábrica
	get_tree().change_scene("res://Node2D.tscn")
	#A variável ponto é zerada
	Global.ponto = 0
	#O dinheiro ganho com task, será adicionado a "carteira" do usuário
	Global.dinheiro += Global.valor
	#A variável valor é zerada
	Global.valor = 0
	#Posicao que na qual o personagem será direcionado
	Global.posicao = "fabrica"
