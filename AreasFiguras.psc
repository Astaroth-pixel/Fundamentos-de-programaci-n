Proceso AreasFiguras
	Definir opcion, lado, base, altura, radio Como Real
	Escribir "MEN� DE �REAS DE FIGURAS"
	Escribir "1. Cuadrado"
	Escribir "2. Rect�ngulo"
	Escribir "3. Tri�ngulo"
	Escribir "4. C�rculo"
	Escribir "Elige una opci�n: "
	Leer opcion
	
	Segun opcion Hacer
		1:
			Escribir "Ingresa el lado del cuadrado: "
			Leer lado
			Escribir "�rea = ", lado * lado
		2:
			Escribir "Ingresa la base del rect�ngulo: "
			Leer base
			Escribir "Ingresa la altura del rect�ngulo: "
			Leer altura
			Escribir "�rea = ", base * altura
		3:
			Escribir "Ingresa la base del tri�ngulo: "
			Leer base
			Escribir "Ingresa la altura del tri�ngulo: "
			Leer altura
			Escribir "�rea = ", (base * altura) / 2
		4:
			Escribir "Ingresa el radio del c�rculo: "
			Leer radio
			Escribir "�rea = ", PI * radio * radio
		De Otro Modo:
			Escribir "Opci�n no v�lida."
	FinSegun
FinProceso
