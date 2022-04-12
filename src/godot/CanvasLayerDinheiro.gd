extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	$DinheiroPlayer.text = "R$" + str (Global.dinheiro)
