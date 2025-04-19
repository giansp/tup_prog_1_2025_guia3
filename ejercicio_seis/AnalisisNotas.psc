Algoritmo AnalisisNotas
    Definir nota, cantNotas, sumaNotas, aprobados, reprobados Como Entero;
    Definir muyBueno, bueno, regular, insuficiente Como Entero;
    Definir promedio Como Real;
    
    cantNotas <- 0;
    sumaNotas <- 0;
    aprobados <- 0;
    reprobados <- 0;
    muyBueno <- 0;
    bueno <- 0;
    regular <- 0;
    insuficiente <- 0;
    Escribir "Ingrese las notas de los alumnos (0-10). Ingrese -1 para finalizar:";
    Leer nota;
    Mientras nota <> -1 Hacer
        Si nota >= 0 Y nota <= 10 Entonces
            cantNotas <- cantNotas + 1;
            sumaNotas <- sumaNotas + nota;
            Si nota >= 4 Entonces
                aprobados <- aprobados + 1;
            Sino
                reprobados <- reprobados + 1;
            FinSi
            Si nota >= 8 Entonces
                muyBueno <- muyBueno + 1;
            Sino 
                Si nota >= 6 Entonces
                    bueno <- bueno + 1;
                Sino 
                    Si nota >= 4 Entonces
                        regular <- regular + 1;
                    Sino
                        insuficiente <- insuficiente + 1;
                    FinSi
                FinSi
            FinSi
        Sino
            Escribir "Nota no válida. Ingrese un valor entre 0 y 10.";
        FinSi
        Leer nota;
    FinMientras
    
    Si cantNotas > 0 Entonces
        promedio <- sumaNotas / cantNotas;
        Escribir "RESULTADOS:";
        Escribir "Total de notas ingresadas: ", cantNotas;
        Escribir "Promedio general: ", promedio;
        Escribir "Alumnos aprobados: ", aprobados;
        Escribir "Alumnos reprobados: ", reprobados;
        Escribir "Distribución por categoría:";
        Escribir "  Muy Bueno (8-10): ", trunc(muyBueno * 100 / cantNotas), "%";
        Escribir "  Bueno (6-7): ", trunc(bueno * 100 / cantNotas), "%";
        Escribir "  Regular (4-5): ", trunc(regular * 100 / cantNotas), "%";
        Escribir "  Insuficiente (0-3): ", trunc(insuficiente * 100 / cantNotas), "%";
    Sino
        Escribir "No se ingresaron notas válidas.";
    FinSi
FinAlgoritmo