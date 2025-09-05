Proceso CineEntradas
	Definir precio, total Como Real
	Definir cantidad Como Entero
	Definir dia Como Caracter
	
	Escribir "Ingrese la cantidad de entradas: "
	Leer cantidad
	Escribir "Ingrese el día (Lunes, Martes, Miércoles, etc.): "
	Leer dia
	
	// Precio base
	precio <- 100
	
	// Descuento por día
	Si dia = "Miercoles" Entonces
		precio <- precio * 0.8   // 20% descuento
	FinSi
	
	// Promoción: si compras más de 5 entradas
	Si cantidad > 5 Entonces
		precio <- precio * 0.9   // 10% descuento extra
	FinSi
	
	total <- cantidad * precio
	
	Escribir "El precio por entrada es: ", precio
	Escribir "El total a pagar es: ", total
FinProceso
