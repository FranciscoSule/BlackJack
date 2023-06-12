Algoritmo TP_logicayestructura
	
	Definir cartas, pedido Como Caracter
	Definir valores, num_aleatorio, i, carta1, carta2, carta3, puntos, ingreso Como Entero
	Definir carta_casa como entero
	Definir puntos_casa Como Entero
	puntos_casa=0
	ingreso=0
	puntos=0
	
	Dimension cartas[13]
	Dimension valores[13]
	
	// Asignar valores a las cartas
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
	
	// Asignar nombres a las cartas
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
	
	// Repartir dos cartas al jugador
	Para i=0 hasta 1 Con Paso 1 Hacer
		num_aleatorio=azar(13)
		
		// Verificar si la carta es un As (A) y solicitar valor al jugador
		Si num_aleatorio = 0 Entonces
			Escribir 'Tu carta es A elija su valor : 1 o 11'
			leer ingreso
			
			// Validar que el valor ingresado sea válido (1 o 11)
			Si ingreso <> 1 y ingreso <> 11 Entonces
				Escribir 'Error: Ingrese un valor válido (1 o 11)'
				
				Repetir
					Leer ingreso
				Hasta Que ingreso = 1 o ingreso = 11
			FinSi
			
			// Ajustar el valor de la carta As según la elección del jugador
			Si ingreso = 11 Entonces
				puntos= puntos+ingreso-1
			FinSi
		FinSi
		
		// Mostrar la carta obtenida y su valor
		Si ingreso=11 Entonces
			Escribir "Tu carta fue " cartas[num_aleatorio] " Que vale 11" 
		Sino
			Escribir "Tu carta fue " cartas[num_aleatorio] " Que vale "  valores[num_aleatorio] 
			
		FinSi
		
		// Sumar los puntos obtenidos por la carta al total de puntos del jugador
		puntos=puntos+valores[num_aleatorio]
		ingreso=0
	FinPara
	
	Escribir " "
	Escribir "Tu cantidad de puntos " puntos
	
	// Verificar si el jugador obtuvo Blackjack
	Si puntos = 21 Entonces
		Escribir 'BlackJack ¡HAS GANADO!'
	SiNo
		
		// Solicitar una carta más al jugador
		Si puntos < 21 Entonces
			Repetir
				Escribir '¿Quieres otra carta?'
				Escribir 'Ingresar S si quiere o P para plantarse'
				leer pedido
				
				Si pedido = 'S' o pedido = 's' Entonces
					num_aleatorio = azar(13)
					Escribir "Tu carta fue " cartas[num_aleatorio] " Que vale "  valores[num_aleatorio]
					puntos= puntos+valores[num_aleatorio]
					Mostrar puntos
				FinSi
				
				// Verificar si el jugador obtuvo Blackjack
				Si puntos = 21 Entonces
					pedido='p'
					Escribir 'BlackJack ¡HAS GANADO!'
					
				FinSi
				
				// Verificar si el jugador se pasó de 21 puntos
				Si puntos >21 Entonces
					Escribir 'Perdiste'
					pedido='p'
				FinSi									
			Hasta Que pedido = 'p' o pedido = 'P'
			Mostrar puntos
		FinSi
	FinSi
	
	// Jugar la mano de la casa
	Si puntos<21 Entonces
		
		
		Escribir " "
		Repetir
			carta_casa=azar(13)
			si puntos_casa<=11 Entonces
				valores[0] =11
			FinSi
			Escribir "A la casa le toco " cartas[carta_casa] " que vale " valores[carta_casa]
			puntos_casa = puntos_casa + valores[carta_casa]
			Escribir " "
			valores[0] =1
		Hasta Que puntos_casa>=17 o puntos_casa>puntos
		
		// Verificar resultados de la mano de la casa
		Si puntos_casa>21 o puntos > puntos_casa Entonces
			Escribir "Ganaste!!!!"
		Sino 
			Si puntos_casa>puntos Entonces
				Escribir "Perdiste :("
			FinSi
		FinSi
		
		Si puntos_casa=puntos Entonces
			Escribir "Empate"
		FinSi
		
		Escribir "Los puntos de la casa: " puntos_casa 
	FinSi
	
	
    //La casa recibe dos cartas, Si tiene 16 o menos, está obligada a pedir otra carta. 
	//Si tiene 17 o más se tiene que plantar
	
	//La casa le gana a todos los jugadores que se pasen de 21, y a todos aquellos que tengan 
	// una mano de menor valor que la suya. Si tiene 19 puntos, por ejemplo, le gana a todos 
	// los que tengan 18 o menos y 22 o más.
	
	// Pierde con los jugadores que tengan una mano superior, y con todos los que se hayan 
	// plantado en el caso de que exceda los 21 puntos. El empate en blackjack, se da entre 
	// la banca y los jugadores que tengan la misma cantidad de puntos.
FinAlgoritmo


