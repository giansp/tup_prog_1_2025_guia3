Proceso loteria
	Definir num, mayor, menor,sumaimp, impares, pares, cont Como Entero;
	Definir promedio Como entero;
	cont <- 1;
	pares=0;
	impares=0;
	sumaimp=0;
	Escribir 'Ingrese el numero ', cont;
	Leer num;
	mayor <- num;
	menor=num;
	
	Si num mod 2=0 Entonces
		pares=pares+1;
	SiNo
		impares=impares+1;
		sumaimp=sumaimp+num;
	FinSi
	
	
	Repetir
		cont <- cont+1;
		Escribir 'Ingrese el numero ', cont;
		Leer num;
		Si num>mayor Entonces
			mayor <- num;
		SiNo
			Si num<menor Entonces
				num <- menor;
			FinSi
		FinSi
		si num mod 2=0 Entonces
			pares=pares+1;
		SiNo
			impares=impares+1;
			sumaimp=sumaimp+num;
		FinSi
	Hasta Que cont=20
	
	promedio=impares/sumaimp;
	Escribir "El menor es ",menor;
	Escribir "El mayor es ",mayor;
	Escribir "La cantidad de pares son ",pares;
	Escribir "El promedio de los impares es ",promedio;
FinProceso
