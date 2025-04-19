Algoritmo CalculoCompra
    Definir cantidadProducto, cantidadTotalProductos Como Entero;
    Definir precioUnitario, totalCompra Como Real;
    Definir continuar Como Caracter;
    totalCompra <- 0;
    cantidadTotalProductos <- 0;
    continuar <- "S";
    
    Escribir "SISTEMA DE COMPRAS";
    Mientras continuar = "S" O continuar = "s" Hacer
        Escribir "Ingrese la cantidad del producto:";
        Leer cantidadProducto;
        
        Escribir "Ingrese el precio unitario:";
        Leer precioUnitario;
        
        cantidadTotalProductos <- cantidadTotalProductos + cantidadProducto;
        totalCompra <- totalCompra + (cantidadProducto * precioUnitario);
        
        Escribir "Producto agregado. Subtotal actual: $", totalCompra;
        
        Escribir "¿Desea agregar otro producto? (S/N):";
        Leer continuar;
    FinMientras
    
    Escribir "RESUMEN DE COMPRA:";
    Escribir "Cantidad total de productos: ", cantidadTotalProductos;
    Escribir "Total a pagar: $", totalCompra;
FinAlgoritmo