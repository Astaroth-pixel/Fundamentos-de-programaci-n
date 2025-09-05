Proceso Pasteleria
	Definir total Como Real
	Definir sabor, tipoChocolate, nombre Como Cadena
	Definir agregarSnack, numSnacks, personalizar Como Entero
	
	total <- 0
	
	Escribir "¿De qué sabor quieres la tarta? (manzana, fresa, chocolate):"
	Leer sabor
	sabor <- Minusculas(sabor)
	
	Segun sabor Hacer
		"manzana":
			total <- 200
		"fresa":
			total <- 250
		"chocolate":
			Escribir "¿Quieres chocolate negro o blanco?"
			Leer tipoChocolate
			tipoChocolate <- Minusculas(tipoChocolate)
			
			Si tipoChocolate = "negro" Entonces
				total <- 280
			SiNo
				Si tipoChocolate = "blanco" Entonces
					total <- 300
				SiNo
					Escribir "Opción inválida, se asignará chocolate negro por defecto."
					total <- 280
				FinSi
			FinSi
		De Otro Modo:
			Escribir "Sabor inválido, se asignará tarta de manzana por defecto."
			total <- 200
	FinSegun
	
	Escribir "¿Deseas agregar snacks? (+$25 cada uno) (1=Si, 0=No):"
	Leer agregarSnack
	
	Si agregarSnack = 1 Entonces
		Escribir "¿Cuántos snacks deseas añadir?"
		Leer numSnacks
		total <- total + (numSnacks * 25)
	FinSi
	
	Escribir "¿Quieres personalizar la tarta con un nombre? (+$30) (1=Si, 0=No):"
	Leer personalizar
	
	Si personalizar = 1 Entonces
		Escribir "Escribe el nombre para la tarta:"
		Leer nombre
		total <- total + 30
	FinSi
	
	Escribir "El precio total de tu tarta es: $", total
FinProceso

