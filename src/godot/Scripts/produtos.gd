extends RigidBody2D

func _ready():
	var tipoProduto = $produto.frames.get_animation_names()#Cada vez que um novo produto for criado, será de uma categoria diferente 
	$produto.animation = tipoProduto[randi() % tipoProduto.size()] # A animacao seja igual a um valor que esteja dentro do array tipoProduto, de 0 ao máximo 
	

func _on_VisibilityNotifier2D_screen_exited(): # Quando chega no limite da tela ficam acumulados, entao tem que retirar
	queue_free() #Liberando a memória do produto que saiu da tela 

func _on_Button_pressed():
	$produto.visible = false
	$embalagem.visible = true 
	Global.ponto += 1
	
	

