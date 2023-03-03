extends Node2D

var teste = false
var valor = 0
var numero = 0 #Correcao ú por u
var lista = [] #Correcao adicionado 'var' antes de lista
var nome #Adicao de declaracao da variavel nome

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit2.text) 
	# Correcao ú por u 
	# Adicao de '$' antes de LineEdit
	# Criacao de outro lineEdit para o numero
	nome = $LineEdit.text #Correcao trocar numero e $LineEdit.text de ordem

func _on_Button2_pressed():
	# Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i #Correcao N por n
		lista.append(numero) #Correcao N por n
	numero = $Label.text #Correcao trocar numero e $Label.text de ordem

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	while(len(lista)):
		var cont = 0 # Correcao adicionado 'var' antes de cont
		var i = 0 # Correcao adicionado 'var' antes de i
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			nome = nome+"baldo"
		$Label2.text = nome
