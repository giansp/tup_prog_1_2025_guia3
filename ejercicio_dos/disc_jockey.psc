Proceso disc_jockey
	Definir cancion, canmayor, canmenor Como Cadena;
	Definir min, seg, hora, tempmayor, tempmenor Como Entero;
	Definir totalmin,totalseg,duracion,totaltemp Como Entero;
	definir ban como Logico;
	Definir resp Como Caracter;
	
	ban=Verdadero;
	totaltemp=0;
	totalmin=0;
	totalseg=0;
	tempmayor=0;
	tempmenor=9999;
	
	Mientras ban=Verdadero Hacer
		Escribir "Ingrese nombre de cancion";
		Leer cancion;
		Escribir "Ingresar primero minutos y luego segundos";
		Escribir "Ingrese duracion (Minutos)";
		Leer min;
		Escribir "Ingrese duracion (Segundos)";
		Leer seg;
		duracion=min*60+seg;
		Si (totaltemp+duracion)>4440 Entonces
			Escribir "Se supero el limite de 74 minutos";
			ban=falso;
		SiNo
			totaltemp=totaltemp+duracion;
			Si duracion>tempmayor Entonces
				tempmayor=duracion;
				canmayor=cancion;
			FinSi
			Si duracion<tempmenor Entonces
				tempmenor=duracion;
				canmenor=cancion;
			FinSi
			
			Escribir "¿Ingresar otra cancion? (S/N)";
			Leer resp;
			Si resp="n" o resp="N" Entonces
				ban=falso;
			FinSi
		FinSi
	FinMientras
	hora=trunc(totaltemp/3600);
	min=trunc((totaltemp MOD 3600)/60);
	seg=totaltemp MOD 60;
	
	Escribir "Tiempo total de reproduccion",hora,":",min,":",seg;
	Escribir "Cancion con mayor duracion: ",canmayor;
	Escribir "Cancion con menor duracion: ",canmenor;
FinProceso