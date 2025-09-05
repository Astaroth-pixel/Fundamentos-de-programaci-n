Proceso Meses
	Definir mes, dias Como Entero
	Definir nombreMes Como Cadena
	
	Escribir "Introduce el número del mes (1 - 12):"
	Leer mes
	
	Si mes >= 1 Y mes <= 12 Entonces
		Segun mes Hacer
			1:
				nombreMes <- "Enero"
				dias <- 31
			2:
				nombreMes <- "Febrero"
				dias <- 28
			3:
				nombreMes <- "Marzo"
				dias <- 31
			4:
				nombreMes <- "Abril"
				dias <- 30
			5:
				nombreMes <- "Mayo"
				dias <- 31
			6:
				nombreMes <- "Junio"
				dias <- 30
			7:
				nombreMes <- "Julio"
				dias <- 31
			8:
				nombreMes <- "Agosto"
				dias <- 31
			9:
				nombreMes <- "Septiembre"
				dias <- 30
			10:
				nombreMes <- "Octubre"
				dias <- 31
			11:
				nombreMes <- "Noviembre"
				dias <- 30
			12:
				nombreMes <- "Diciembre"
				dias <- 31
		FinSegun
		
		Escribir "El mes seleccionado es: ", nombreMes
		Escribir "Tiene ", dias, " días."
	SiNo
		Escribir "Número de mes inválido. Debe estar entre 1 y 12."
	FinSi
FinProceso
