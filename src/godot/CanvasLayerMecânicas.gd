extends CanvasLayer
var cont = 0
#detecta se esta perto do guilherme
var areaGui = false
func _on_caixaTextoGui_body_entered(body):
	areaGui = true
func _on_caixaTextoGui_body_exited(body):
	areaGui = false

var areaVendedor = false
func _on_areaVendedor_body_entered(body):
	areaVendedor = true
func _on_areaVendedor_body_exited(body):
	areaVendedor = false
var prof = 0
func _on_botaoProf_pressed():
	prof += 1

var gui = 0
func _on_botaoGui_pressed():
	gui += 1

var vendedor = 0 
func _on_botaoVendedor_pressed():
	vendedor += 1
	
var lucas = 0
func _on_lucasNpc_pressed():
		lucas += 1

var areaLucas = false
func _on_areaLucas_body_entered(body):
	areaLucas = true 
	
func _on_areaLucas_body_exited(body):
	areaLucas = false
	
var ricardo = 0
func _on_botaoRicardo_pressed():
	ricardo += 1

var areaRic = false 
func _on_Area2D_body_entered(body):
	areaRic  = true 
	
func _on_Area2D_body_exited(body):
	areaRic = false

#muda a variável quando fica do lado da professora
var areaProf = false
func _on_caixaTexto_body_entered(body):
	areaProf = true

func _on_caixaTexto_body_exited(body):
	areaProf = false 

#faz o botao next sumir com o tutorial
func _on_botaoTutorial_pressed():
	Global.contador += 1
# delta é um método que faz o codigo ser executado a cada frame
func _process(delta):
		#tutorial aparece
	if Global.contador == 0 :
		$boasVindas.visible = true
		$botaoTutorial.visible = true
		#tutorial sai
	if Global.contador == 1:
		$boasVindas.visible = false
		$botaoTutorial.visible = false
		$instrucNpc.visible = true
		$botaoNpc.visible = true
		#
	if Global.contador == 2:
		$instrucNpc.visible = false
		$botaoNpc.visible = false
		$VideoPlayer.visible = true
		
	if Global.contador == 3:
		$VideoPlayer.visible = false
		
	#abaixo, existem variáveis que fazem as falas e os rostos dos NPC's aparecerem na tela, atrás do NPC tem um
	#botão que aumenta um contador, e é combinado com uma área, a fala só aparece se o player estiver nessa área e 
	#o resto da divisão for 1.
	
	#Cada um tem seu nome
	
	if areaProf == true and prof % 2 == 1:
		$professora.visible = true
		$fundoProfessora.visible = true
		$textoProf.visible = true
	elif areaProf == false or prof % 2 == 0:
		$professora.visible = false
		$fundoProfessora.visible = false
		$textoProf.visible = false
	
	if areaGui == true and gui % 2 == 1:
		$guilherme.visible = true
		$textoGui.visible = true
		$fundoGui.visible = true
	elif areaGui == false or gui % 2 == 0:
		$guilherme.visible = false
		$textoGui.visible = false
		$fundoGui.visible = false
	
	if areaVendedor == true and vendedor % 2 == 1:
		$vendedor.visible = true
		$fundoMario.visible = true
		$textoVendedor.visible = true
		$nomeVendedor.visible = true
	elif areaVendedor == false or vendedor % 2 == 0:
		$vendedor.visible = false
		$fundoMario.visible = false
		$textoVendedor.visible = false
		$nomeVendedor.visible = false
		
	if areaLucas == true and lucas % 2 == 1:
		$fundoLucas.visible = true
		$falalucas.visible = true
		$rostoLucas.visible = true
	elif areaLucas == false or lucas % 2 == 0:
		$fundoLucas.visible = false
		$falalucas.visible = false 
		$rostoLucas.visible = false
	
	if areaRic == true and ricardo % 2 == 1:
		$rostoRicardo.visible = true
		$fundoRicardo.visible = true
		$falaRicardo.visible = true
	elif areaRic == false or ricardo % 2 == 0:
		$rostoRicardo.visible = false
		$fundoRicardo.visible = false
		$falaRicardo.visible = false
	#Os condicionais abaixo servem pra mostrar os e-mails em seus respectvos dias
	if Global.dia == 1:
		$Emailpc/dia1.visible = true
	if Global.dia == 2:
		$Emailpc/dia2.visible = true
	if Global.dia == 3: 
		$Emailpc/dia3.visible = true
	if Global.dia == 4:
		$Emailpc/dia4.visible = true
	if Global.dia == 5:
		$Emailpc/dia5.visible = true
	if Global.dia == 6:
		$Emailpc/dia6.visible = true
	if Global.dia == 7: 
		$Emailpc/dia7.visible = true
	if Global.dia == 8:
		$Emailpc/dia8.visible = true

#Faz aparecer os produtos e os botões deles
func _on_botaoMercado_pressed():
	$mercado.visible = true
	$setaVolta.visible = true
	$sairMercado.visible = true
	$botaoBife.visible = true
	$botaoMacarrao.visible = true
	$botaoSushi.visible = true
	$botaoLeite.visible = true
	$botaoBolo.visible = true
	$botaoHamb.visible = true
	$botaoRosquinha.visible = true
	$botaoMaca.visible = true

func _on_sairMercado_pressed():
	$mercado.visible = false
	$setaVolta.visible = false
	$sairMercado.visible = false
	$botaoBife.visible = false
	$botaoMacarrao.visible = false
	$botaoSushi.visible = false
	$botaoLeite.visible = false
	$botaoBolo.visible = false
	$botaoHamb.visible = false
	$botaoRosquinha.visible = false
	$botaoMaca.visible = false

#Faz aumentar a felicidade e diminuir o dinheiro, dependendo do produto que escolher
func _on_botaoBife_pressed():
	Global.dinheiro -= 20
	Global.menosFeliz += 16.68

func _on_botaoMacarrao_pressed():
	Global.dinheiro -= 15
	Global.menosFeliz += 12.51

func _on_botaoSushi_pressed():
	Global.dinheiro -= 15
	Global.menosFeliz += 12.51

func _on_botaoLeite_pressed():
	Global.dinheiro -= 5
	Global.menosFeliz += 4.17

func _on_botaoBolo_pressed():
	Global.dinheiro -= 10
	Global.menosFeliz += 8.34

func _on_botaoHamb_pressed():
	Global.dinheiro -= 10
	Global.menosFeliz += 8.34

func _on_botaoRosquinha_pressed():
	Global.dinheiro -= 5
	Global.menosFeliz += 4.17

func _on_botaoMaca_pressed():
	Global.dinheiro -= 5
	Global.menosFeliz += 4.17
	
func _on_botaoPC_pressed():
	$computador.visible = true
	$botaoEmail.visible = true
	
func _on_setasairpc_pressed():
	$computador.visible = false 
	$botaoEmail.visible = false

func _on_botaoMapa_pressed():
	$mapaAberto.visible = true

func _on_sairMapa_pressed():
	$mapaAberto.visible = false 
	#botao que foca atras da professora
func _on_botaoEmail_pressed():
	$Emailpc.visible = true
	
func _on_botaoNpc_pressed():
	Global.contador += 1

func _on_botaoVoltarDuvida_pressed():
	$computador.visible = true
	$duvidaPc.visible = false


func _on_botaoDuvida_pressed():
	$computador.visible = false
	$duvidaPc.visible = true 

func _on_botaoVoltar_pressed():
	$computador.visible = true
	$Emailpc.visible = false
	
func _on_VideoPlayer_finished():
	Global.contador += 1
