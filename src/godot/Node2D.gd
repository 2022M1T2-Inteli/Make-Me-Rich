extends Node2D

#código do card do computador
func _ready():
	#$AudioStreamPlayer.play()
	pass
#mostra o horario
func _process(delta):
	$personagem/CanvasLayer/Relogio/dia.text = String("DIA " + str(Global.dia))
	$personagem/CanvasLayer/Relogio/hora.text = String(str(Global.horas) + "h" + str(Global.minutos) + "min")
	$personagem/CanvasLayer/happyBar.value = Global.menosFeliz
	#roda o relogio
	Global.sent += delta
	
	if Global.sent >= 0.5:
		Global.minutos += 1
		Global.sent = 0
		
	if Global.minutos == 60:
		Global.horas += 1
		Global.minutos = 00
		Global.menosFeliz -= 4.17
		
	if Global.horas == 24:
		Global.minutos = 00
		Global.horas = 00
		Global.dia += 1
		
	
	

