Proceso SaludoPorHora
	Definir hora Como Entero
	Definir mensaje Como Cadena
	
	Escribir "Introduce la hora (0 - 23):"
	Leer hora
	
	Si hora < 0 O hora > 23 Entonces
		Escribir "La hora debe estar entre 0 y 23."
	SiNo
		Segun hora Hacer
			6,7,8,9,10,11,12:
				mensaje <- "¡Buenos días!"
			13,14,15,16,17,18,19,20:
				mensaje <- "¡Buenas tardes!"
			21,22,23,0,1,2,3,4,5:
				mensaje <- "¡Buenas noches!"
			De Otro Modo:
				mensaje <- "Hora no válida."
		FinSegun
		
		Escribir mensaje
	FinSi
FinProceso
