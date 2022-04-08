extends Node
#variavel global do dinheoiro
var dinheiro = 2000.00
var sent = 0
var horas = 6
var dia = 1
var minutos = 0
var contador = 0
var selecPersonagem
var menosFeliz = 100
var conta = 0
var notificacao = true
var ponto = 0
var valor = 0
var tempo = 0
var meta = 50
var posicao
var gameAberto = 0
var abriuJogoFab = 0
var abriuJogoFio = 0

var MatFin = 0
var Inflacao = 0
var JurosSimples = 0
var JurosCompostos = 0
var RF = 0
var FI = 0
var valorInflacao = 10.06
var valorTaxaSelic = 11.75
var valorDolar = 4.76
var valorEuro = 5.31
var conteudoCompleto = 0
var atividadeCompleta = 0
var testeCompleto = 0
var atividade_MatFin = [false,false,false,false,false,false,false,false]
var atividade_Inflacao = [false,false,false,false,false,false]
var atividade_JurosSimples = [false,false,false,false,false,false]
var atividade_JurosCompostos = [false,false,false,false,false,false,false,false]
var atividade_RendaFixa = [false,false,false,false,false,false]
var atividade_Fundos = [false,false,false,false,false,false]
var teste1 = [false,false,false,false,false,false]
var teste2 = [false,false,false,false,false,false]
var atividade1 = [0,0,0,0] #Matemática Financeira
var atividade2 = [0,0,0] #Inflacao
var atividade3 = [0,0,0] #Juros Simples
var atividade4 = [0,0,0,0] #Juros Compostos
var atividade5 = [0,0,0] #Renda Fixa
var atividade6 = [0,0,0] #Fundos
var testeA = [0,0,0] #1 Avaliacao
var testeB = [0,0,0] #2 Avaliacao
