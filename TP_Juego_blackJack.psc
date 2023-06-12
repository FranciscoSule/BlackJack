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
	
	Para i=0 hasta 1 Con Paso 1 Hacer
		num_aleatorio=azar(13)
		
		Si num_aleatorio = 0 Entonces
			Escribir 'Tu carta es A elija su valor : 1 o 11'
			leer ingreso
			
			Si ingreso <> 1 y ingreso <> 11 Entonces
				Escribir 'Error: Ingrese un valor válido (1 o 11)'
				
				Repetir
					Leer ingreso
				Hasta Que ingreso = 1 o ingreso = 11
			FinSi
			
			Si ingreso = 11 Entonces
				puntos= puntos+ingreso-1
			FinSi
		FinSi
		
		Si ingreso=11 Entonces
			Escribir "Tu carta fue " cartas[num_aleatorio] " Que vale 11" 
		Sino
			Escribir "Tu carta fue " cartas[num_aleatorio] " Que vale "  valores[num_aleatorio] 
			
		FinSi
		
		puntos=puntos+valores[num_aleatorio]
		ingreso=0
	FinPara
	
	Escribir " "
	Escribir "Tu cantidad de puntos " puntos
	
	Si puntos = 21 Entonces
		Escribir 'BlackJack ¡HAS GANADO!'
	SiNo
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
				
				Si puntos = 21 Entonces
					pedido='p'
					Escribir 'BlackJack ¡HAS GANADO!'
					
				FinSi
				
				Si puntos >21 Entonces
					Escribir 'Perdiste'
					pedido='p'
				FinSi									
			Hasta Que pedido = 'p' o pedido = 'P'
			Mostrar puntos
		FinSi
	FinSi
	
	Si puntos<21 Entonces
		
		
		Escribir " "
		Repetir
			carta_casa=azar(13)
			si carta_casa = valores[0] Entonces
				puntos_casa= puntos_casa+11
			FinSi
			Escribir "A la casa le toco " cartas[carta_casa] " que vale " valores[carta_casa]
			puntos_casa = puntos_casa + valores[carta_casa]
			Escribir " "
		Hasta Que puntos_casa>=17
		
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


