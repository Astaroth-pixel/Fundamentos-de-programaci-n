Proceso Fabrica
	Definir clave Como Entero
	Definir materiaPrima, manoObra, gastosFabricacion, costoProduccion, precioVenta Como Real
	
	
	Escribir "Ingrese la clave del artículo (1-6): "
	Leer clave
	
	Escribir "Ingrese el costo de la materia prima: "
	Leer materiaPrima
	
	
	manoObra <- 0
	gastosFabricacion <- 0
	
	
	Segun clave Hacer
		1,5:
			manoObra <- materiaPrima * 0.80
		2,6:
			manoObra <- materiaPrima * 0.85
		3,4:
			manoObra <- materiaPrima * 0.75
		De Otro Modo:
			Escribir "Clave no válida"

FinSegun


Segun clave Hacer
	2,5:
		gastosFabricacion <- materiaPrima * 0.30
	3,6:
		gastosFabricacion <- materiaPrima * 0.35
	1,4:
		gastosFabricacion <- materiaPrima * 0.28
FinSegun


costoProduccion <- materiaPrima + manoObra + gastosFabricacion

precioVenta <- costoProduccion * 1.45


Escribir "Costo de producción: $", costoProduccion
Escribir "Precio de venta: $", precioVenta
FinProceso
