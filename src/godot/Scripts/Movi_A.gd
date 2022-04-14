extends Button

func _ready():
	pass

func _process(delta):
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()

func _on_Movi_A_pressed():
	get_tree().quit()
