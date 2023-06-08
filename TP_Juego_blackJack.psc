Algoritmo TP_logicayestructura
	// Declarar variables
	Definir cartas, pedido Como Caracter
	Definir valores, num_aleatorio, i, carta1, carta2, carta3, puntos, ingreso Como Entero
	ingreso=0
	puntos=0
	
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
	
	para i=0 hasta 1 Con Paso 1 Hacer
		num_aleatorio=azar(13)
		
		si num_aleatorio = 0 Entonces
			Escribir 'Tu carta es A elija su valor : 1 o 11'
			leer ingreso
			si ingreso = 11 Entonces
				puntos= puntos+ingreso-1
			FinSi
			
		SiNo
			
		FinSi
		
		si ingreso=11 Entonces
			Escribir "Tu carta fue " cartas[num_aleatorio] " Que vale 11"
			sino
				Escribir "Tu carta fue " cartas[num_aleatorio] " Que vale "  valores[num_aleatorio] 
				
		FinSi
		puntos=puntos+valores[num_aleatorio]
	FinPara
	
	Escribir " "
	Escribir "Tu cantidad de puntos " puntos
	
	si puntos = 21 Entonces
		Escribir 'BlackJack ¡HAS GANADO!'
	SiNo
		si puntos < 21 Entonces
			
			Repetir
				Escribir '¿Quieres otra carta?'
				Escribir 'Ingresar S si quiere o P para plantarse'
				leer pedido
				
				si pedido = 'S' o pedido = 's' Entonces
					carta3 = azar(13)
					Escribir "Tu carta fue " cartas[num_aleatorio] " Que vale "  valores[num_aleatorio]
					puntos= puntos+valores[num_aleatorio]
					Mostrar puntos
				FinSi
					
				
			Hasta Que pedido = 'p' o pedido = 'P'
		FinSi
		
	
		
	FinSi
	
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
