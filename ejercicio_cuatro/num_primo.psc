Proceso num_primo
    Definir num, i, contador Como Entero;
    Definir esPrimo Como Logico;
    
    Escribir "Ingrese un n�mero entero positivo:";
    Leer num;
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
        Escribir num, " Es un n�mero primo.";
    Sino
        Escribir num, " No es un n�mero primo.";
    FinSi
FinProceso