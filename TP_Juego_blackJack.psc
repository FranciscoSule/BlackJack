Algoritmo TP_logicayestructura
	// Declarar variables
	Definir cartas Como Caracter
	Definir valores, carturri, i, carta1, carta2, puntos Como Entero
	Dimension cartas[13]
	Dimension valores[13]
	puntos=0
	
	
	
	
	carta1=iniciarJuego()
	puntos= puntos + carta1
	Escribir " "
	carta2=iniciarJuego()
	puntos= puntos + carta2
	
	
	Mostrar puntos
	
	
	// darle valor a las cartas
	// A = 1 o 11 preguntarle al usuario que valor toma
	// 2-10 cartas normales
	// J Q K valor 10
	// crear un array que contenga los valores 2-10
	// crear un array con las letras 
	// si tocan 2 A al jugador uno solo se toma como valor 11
	// declarar funcion repartir()  con la funcion azar() toma un numero del array
	// si casa pasa los 21 pierde casa
	// casa si toca A es siempre 11 la primera
	// si jugador pasa los 21 pierde jugador
	// declarar Funcion inicioJuego() reparte dos cartas al jugador
	// preguntarle al usuario si pide carta / que responda S si quiere o P de plantarse
	
	
	
FinAlgoritmo

//declarar funciones

Funcion a = iniciarJuego ()
	Definir cartas Como Caracter
	Definir valores, carturri, puntos Como Entero
	carturri=0
	Dimension cartas[13]
	Dimension valores[13]
	
	valores[0] = 1
	valores[1] = 2
	valores[2] = 3
	valores[3] = 4
	valores[4] = 5
	valores[5] = 6
	valores[6] = 7
	valores[7] = 8
	valores[8] = 9
	valores[9] = 10
	valores[10] = 10
	valores[11] = 10
	valores[12] = 10
	
	cartas[0] = "A"
	cartas[1] = '2'
	cartas[2] = '3'
	cartas[3] = '4'
	cartas[4] = '5'
	cartas[5] = '6'
	cartas[6] = '7'
	cartas[7] = '8'
	cartas[8] = '9'
	cartas[9] = '10'
	cartas[10] = 'J'
	cartas[11] = 'Q'
	cartas[12] = 'K'
	carturri=azar(13)
	Escribir "Tu carta fue " cartas[carturri] " Que vale "  valores[carturri] 	
	puntos= valores[carturri]
	
FinFuncion