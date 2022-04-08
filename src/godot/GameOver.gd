extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var porcentagem = (float(Global.ponto)/float(Global.meta))*100
# Called when the node enters the scene tree for the first time.
var valorProduto = 1.35
func _ready():
	#$Control/Label.text = str(NodeGlobal2.score)
	$Control2/Meta.text = str(Global.meta)
	$Control2/Embalados.text = str(porcentagem) + "%"
	if(porcentagem >= 100):
		Global.valor = 135
		$Control2/Valor.text = str(Global.valor)
	else:
		Global.valor = Global.score * valorProduto
		$Control2/Valor.text = "R$ " + str(Global.valor)

func _on_Button_pressed():
	get_tree().change_scene("res://Node2D.tscn")
	Global.score = 0
	Global.dinheiro += Global.valor
	Global.valor = 0
	Global.posicao = "fabrica"
