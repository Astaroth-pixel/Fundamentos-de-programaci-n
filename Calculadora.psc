Proceso Calculadora
	Definir a, b, resultado Como Real
	Definir operador Como Caracter
	
	Escribir "Ingresa el primer número: "
	Leer a
	Escribir "Ingresa el segundo número: "
	Leer b
	Escribir "Ingresa el operador (+, -, *, /): "
	Leer operador
	
	Segun operador Hacer
		"+":
			resultado <- a + b
		"-":
			resultado <- a - b
		"*":
			resultado <- a * b
		"/":
			Si b <> 0 Entonces
				resultado <- a / b
			SiNo
				Escribir "Error: división entre 0"
FinSi
De Otro Modo:
	Escribir "Operador no válido."
FinSegun

Escribir "Resultado = ", resultado
FinProceso