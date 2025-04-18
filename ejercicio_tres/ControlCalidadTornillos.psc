Proceso ControlCalidadTornillos
	Definir cod, loteMenor, loteMayor Como Entero;
	Definir medEsp, medAct, maxError,error Como Real;
	Definir lotes, fallas, totFallas, minFallas, maxFallas Como Entero;
	Definir i Como Entero;
	lotes = 0;
	totFallas = 0;
	minFallas = 11;
	maxFallas = -1;
	
	Repetir
		Escribir "Código del lote (0 para terminar):";
		Leer cod;
		Si cod <> 0 Entonces
			lotes = lotes + 1;
			fallas = 0;
			maxError = 0;
			Escribir "Medida esperada para el lote ", cod, ":";
			Leer medEsp;
			Para i = 1 Hasta 10 Hacer
				Escribir "Ingrese medida del tornillo ", i, ":";
				Leer medAct;
				error = abs(medAct - medEsp);
				Si error > maxError Entonces
					maxError = error;
				FinSi
				Si error > 0 Entonces
					fallas = fallas + 1;
				FinSi
			FinPara
			totFallas = totFallas + fallas;
			
			Si fallas < minFallas Entonces
				minFallas = fallas;
				loteMenor = cod;
			FinSi
			Si fallas > maxFallas Entonces
				maxFallas = fallas;
				loteMayor = cod;
			FinSi
			
			Escribir "Resumen Lote ", cod, ":";
			Escribir "Mayor error: ", maxError;
			Escribir "Porcentaje de fallas: ", (fallas * 10), "%";
		FinSi
	Hasta Que cod = 0;
	Si lotes > 0 Entonces
		Escribir "RESULTADOS FINALES";
		Escribir "Total lotes procesados: ", lotes;
		Escribir "% general de fallas: ", (totFallas * 10) / lotes, "%";
		Escribir "Mejor lote: ", loteMenor, " (", minFallas, " fallas)";
		Escribir "Peor lote: ", loteMayor, " (", maxFallas, " fallas)";
	Sino
		Escribir "No se procesaron lotes.";
	FinSi
FinProceso

