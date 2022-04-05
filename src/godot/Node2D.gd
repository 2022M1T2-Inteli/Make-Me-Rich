extends Node2D

#código do card do computador
func _ready():
	#$AudioStreamPlayer.play()
	pass
#mostra o horario
func _process(delta):
	$personagem/CanvasLayer/dia.text = String("DIA " + str(Global.dia))
	$personagem/CanvasLayer/hora.text = String(str(Global.horas) + "h" + str(Global.minutos) + "min")
	$personagem/CanvasLayer/happyBar.value = Global.menosFeliz
	#roda o relogio
	Global.sent += delta
	
	if Global.sent >= 0.08:
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
		
	if Global.menosFeliz <= 5:
		$personagem/CanvasLayer/bloqueioPop.visible = true
		$botaoRicardo.visible = false
		$lucasNpc.visible = false
		$botaoGui.visible = false
		$BancoJudite/caixaInvestir.visible = false
		$UniversidadeJudite/botaoProf.visible = false
		$personagem/CanvasLayer/botaoMapa.visible = false
		$personagem/CanvasLayer/sairMercado.visible = false
		$personagem/CanvasLayer/botaoBife.visible = false
		$personagem/CanvasLayer/botaoMacarrao.visible = false
		$personagem/CanvasLayer/botaoSushi.visible = false
		$personagem/CanvasLayer/botaoLeite.visible = false
		$personagem/CanvasLayer/botaoBolo.visible = false
		$personagem/CanvasLayer/botaoHamb.visible = false
		$personagem/CanvasLayer/botaoRosquinha.visible = false
		$personagem/CanvasLayer/botaoMaca.visible = false
		$personagem/CanvasLayer/botaoEmail.visible = false
		$botaoPC.visible = false
		$botaoLivro.visible = false
		$botaoMercado.visible = false
		$botaoFabrica.visible = false
		$botaoCassino1.visible = false
		$botaoCassino2.visible = false
		$botaoFios.visible = false
		$personagem/CanvasLayer/falaRicardo.visible = false
		$personagem/CanvasLayer/falalucas.visible = false
		$personagem/CanvasLayer/textoProf.visible = false
		$BancoJudite/caixaTextoGui.visible = false
		$personagem/CanvasLayer/textoProf.visible = false
		$personagem/CanvasLayer/textoVendedor.visible = false
		$personagem/CanvasLayer/nomeVendedor.visible = false
		$MercadoJudite/botaoVendedor.visible = false
