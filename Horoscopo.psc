Proceso Horoscopo
	Definir dia, mes Como Entero
	Definir signo Como Cadena
	
	Escribir "Introduce tu día de nacimiento (1-31):"
	Leer dia
	
	Escribir "Introduce tu mes de nacimiento (1-12):"
	Leer mes
	
	Segun mes Hacer
		1:
			Si dia >= 1 Y dia <= 19 Entonces
				signo <- "Capricornio"
			SiNo
				signo <- "Acuario"
			FinSi
		2:
			Si dia >= 1 Y dia <= 18 Entonces
				signo <- "Acuario"
			SiNo
				signo <- "Piscis"
			FinSi
		3:
			Si dia >= 1 Y dia <= 20 Entonces
				signo <- "Piscis"
			SiNo
				signo <- "Aries"
			FinSi
		4:
			Si dia >= 1 Y dia <= 19 Entonces
				signo <- "Aries"
			SiNo
				signo <- "Tauro"
			FinSi
		5:
			Si dia >= 1 Y dia <= 20 Entonces
				signo <- "Tauro"
			SiNo
				signo <- "Geminis"
			FinSi
		6:
			Si dia >= 1 Y dia <= 20 Entonces
				signo <- "Geminis"
			SiNo
				signo <- "Cancer"
			FinSi
		7:
			Si dia >= 1 Y dia <= 22 Entonces
				signo <- "Cancer"
			SiNo
				signo <- "Leo"
			FinSi
		8:
			Si dia >= 1 Y dia <= 22 Entonces
				signo <- "Leo"
			SiNo
				signo <- "Virgo"
			FinSi
		9:
			Si dia >= 1 Y dia <= 22 Entonces
				signo <- "Virgo"
			SiNo
				signo <- "Libra"
			FinSi
		10:
			Si dia >= 1 Y dia <= 22 Entonces
				signo <- "Libra"
			SiNo
				signo <- "Escorpio"
			FinSi
		11:
			Si dia >= 1 Y dia <= 21 Entonces
				signo <- "Escorpio"
			SiNo
				signo <- "Sagitario"
			FinSi
		12:
			Si dia >= 1 Y dia <= 21 Entonces
				signo <- "Sagitario"
			SiNo
				signo <- "Capricornio"
			FinSi
		De Otro Modo:
			signo <- "Mes no valido"
	FinSegun
	
	Escribir "Tu signo zodiacal es: ", signo
FinProceso
