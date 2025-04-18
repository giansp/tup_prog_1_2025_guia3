Proceso RangoPrimos
    Definir inicio, final, num, i, contador, temp Como Entero;
    Definir esPrimo Como Logico;
	
    Escribir "Ingrese el inicio del rango:";
    Leer inicio;
    Escribir "Ingrese el final del rango:";
    Leer final;
	
    Si inicio > final Entonces
        temp = inicio;
        inicio = final;
	final = temp;
	FinSi
Escribir "Números primos entre ", inicio, " y ", final, ":";
Para num = inicio Hasta final Hacer
	Si num <= 1 Entonces
		esPrimo = Falso;
	Sino
		contador = 0;
		Para i = 1 Hasta num Hacer
			Si num % i == 0 Entonces
				contador = contador + 1;
			FinSi
		FinPara
		
		Si contador == 2 Entonces
			esPrimo = Verdadero;
		Sino
			esPrimo = Falso;
		FinSi
	FinSi
	Si esPrimo Entonces
		Escribir num;
	FinSi
FinPara
FinProceso