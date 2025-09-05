Proceso VelocidadMulta
	Definir velocidad Como Entero
	Definir cumple Como Cadena
	
	Escribir "Ingresa la velocidad:"
	Leer velocidad
	
	Escribir "¿Es tu cumpleaños? (si/no):"
	Leer cumple
	cumple <- Minusculas(cumple)
	
	Si cumple = "si" Entonces
		Escribir "No tienes multa"
	SiNo
		Si velocidad < 60 Entonces
			Escribir "No tienes multa."
		SiNo
			Si velocidad >= 60 Y velocidad <= 80 Entonces
				Escribir "Tienes una multa pequeña."
			SiNo
				Escribir "Tienes una multa grande."
			FinSi
		FinSi
	FinSi
FinProceso

