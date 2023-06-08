Algoritmo TP_logicayestructura
	// Declarar variables
	Definir cartas Como Caracter
	Definir valores , puntos, carta1, carta2 Como Entero
	puntos = 0
	carta1=azar(13)
	carta2=azar(13)
	Dimension cartas[13]
	Dimension valores[13]
	
	//Nombre cartas
	cartas[0] = 'A'
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
	
	// Valores cartas
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
	
//	carta1<-azar(13)
	//	carta2<-azar(13)
	
	Mostrar 'Tu cata 1 es: ' cartas[carta1]
	puntos= puntos+valores[carta1]
	Mostrar 'Tu cata 1 es: ' cartas[carta2]
	puntos= puntos+valores[carta2]
	Mostrar 'Puntos actuales: ' puntos
	
	
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


