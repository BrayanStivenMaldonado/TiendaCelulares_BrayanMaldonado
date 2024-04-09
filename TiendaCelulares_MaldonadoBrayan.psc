Algoritmo TiendaCelulares_MaldonadoBrayan
	Dimensionar IdModelo[100] //arreglos donde se van a guardan los datos de los teléfonos que se tienen en el inventario
	Dimensionar PrecioModelo[100]
	Dimensionar Marcas[100]
	Dimensionar Modelos[100]
	Dimensionar CantModelos[100]
	Dimensionar Ventas[100]
	Dimensionar VentaMarca[100]//arreglos donde se van a agregar los productos que se añadan al carrito de compras
	Dimensionar VentaModelo[100]
	Dimensionar VentaPrecio[100]
	Dimensionar VentaCant[100]
	Dimensionar VentaID[100]
	//Marcas que ya están en el sistema
	Marcas[0]<-"Apple"
	Marcas[1]<-"Apple"
	Marcas[2]<-"Apple"
	Marcas[3]<-"Xiaomi"
	Marcas[4]<-"Xiaomi"
	//modelos que ya están en el sistema
	Modelos[0]<-"Iphone 8"
	Modelos[1]<-"Iphone x"
	Modelos[2]<-"Iphone 14"
	Modelos[3]<-"Redmi 11"
	Modelos[4]<-"Poco x5 pro"
	//Precios de los modelos que ya están dentro del sistema
	PrecioModelo[0]<-750000   
	PrecioModelo[1]<-999900   
	PrecioModelo[2]<-3059000  
	PrecioModelo[3]<-531375   
	PrecioModelo[4]<-2249000  	
	//cantidad de los modelos en stock que hay en el sistema
	CantModelos[0]<-10
	CantModelos[1]<-11
	CantModelos[2]<-12
	CantModelos[3]<-13
	CantModelos[4]<-14
	//ID de los modelos que ya están dentro del sistema
	IdModelo[0]<-"10001"
	IdModelo[1]<-"10002"
	IdModelo[2]<-"10003"
	IdModelo[3]<-"10004"
	IdModelo[4]<-"10005"
	//Interfaz del menú de opciones
	counter<-0 // contador que va a servir para mostrar las ventas realizadas
	contador<-5 //este contador es para que nos facilite la llenada de los arreglos de los datos de los celulares, parte desde 4 ya que hay 5 productos ya en el sistema
	Definir boolean Como Logico //se crea una variable lógica
	boolean<-Verdadero //y se le da el valor de "verdadero"
	Mientras boolean=Verdadero Hacer //un mientras, para que siempre que termine una acción el usuario vuelva al menú principal
    Escribir "======================================"
    Escribir "BIENVENIDO A LA TIENDA DE CELULARES BM" //se le especifican qué valor debe ingresar para acceder a las diferentes opciones que ofrece el programa
    Escribir "======¿Qué acción desea realizar?====="
    Escribir "1. Mostrar los modelos disponibles"
    Escribir "2. Agregar un nuevo modelo"
    Escribir "3. Actualizar la cantidad de un modelo"
    Escribir "4. Realizar una venta"
    Escribir "5. Mostrar ventas realizadas"
    Escribir "6. Salir del programa"
	leer accion //se lee la opción que escogió el usuario y dependiendo de este se le va a mandar a los subprocesos que hay
	Limpiar Pantalla
	//se les asigna el valor de las varibales
	productos<-contador
	ContVentas<-counter
	segun accion Hacer
	//Mostrar los modelos disponibles
	1:
		Escribir "Marca   Modelo    Precio   Cantidad     ID"	
		Escribir "=========================================="
		para i=0 hasta contador-1 con paso 1 hacer //se van a recorrer los arreglos tantas veces como productos hayan dentro del programa
			Escribir Marcas[i],"   ",Modelos[i],"   " ,"$",PrecioModelo[i],"   ",CantModelos[i],"   ",IdModelo[i] //se imprimen en pantalla los valores que hay dentro de los arreglos (que son los datos de los celulares)
			Escribir "============================================"
		FinPara		
		Escribir "PRESIONA ENTER PARA VOLVER AL MENÚ DE OPCIONES"
		Esperar Tecla
		Limpiar Pantalla
	//Agregar un nuevo modelo
	2: 
		para i=productos hasta productos Hacer //se van a recorrer los arreglos tantas veces como productos hayan en el sistema
			Escribir "ingrese la marca del celular" //se le pide al usuario los datos del modelo que desea agregar al sistema
			leer Marcas[i]                          //estos valores se van a agregar partiendo del primer espacio vacío que hay en los arreglos (5)
			Escribir "ingrese el modelo del celular"
			leer Modelos[i]
			Escribir "ingrese el precio del celular"
			leer PrecioModelo[i]
			Escribir "ingrese la cantidad que desea agregar"
			Leer CantModelos[i]
			Escribir "ingrese el ID del celular"
			Leer IdModelo[i]
		FinPara
		Escribir "PRESIONA ENTER PARA VOLVER AL MENÚ DE OPCIONES"
		Esperar Tecla
		contador<-contador+1 //cada vez que termine este proceso se va a sumar 1 al contador,con el objetivo de  que se aumente un puesto en los ciclos para
		Limpiar Pantalla		
	//Actualizar la cantidad de un nuevo modelo
	3:
		Escribir "¿Deseas añadir o restar existencias?" //se le pregunta al usuario si desea añadir o eliminar existencias
		Escribir "1. Añadir"
		Escribir "2. Restar"
		leer aor //dependiendo de lo que escoja se le van a mostrar las opciones
		segun aor Hacer
			1:
				Escribir "Escoja el producto"
			Para i=0 Hasta productos-1 con paso 1 hacer 
				Escribir i," ",Modelos[i]," = " ,CantModelos[i] //se le muestra al usuario todos los productos que hay dentro del sistema, para que escoja al que desea agregarle más existencias
			FinPara
			Leer ProductoAgregar //se lee a cuál producto se le van a añadir las existencias
			Escribir "¿Cuántas unidades desea agregar?"
			Leer UnidadesAgregar//se lee la cantidad de unidades que desa añadir
			para i=ProductoAgregar hasta ProductoAgregar //esto es para que se edite solo el espacio de las unidades del producto escogido
			CantModelos[ProductoAgregar]<-CantModelos[ProductoAgregar]+UnidadesAgregar// a la cantidad de existencias  de "x" producto que hay en el sistema se le va a sumar lo que el usuario indique
			FinPara
		2:
			Escribir "Escoja el producto" //Este proceso es parecido al añadir con una pequeñas diferencias, como que se le agrega va a dar un anuncio al usuario cuando intente eliminar más productos de los que hay en stock
			Para i=0 Hasta productos-1 con paso 1 hacer 
				Escribir i," ",Modelos[i], " = " ,CantModelos[i] //se le muestra al usuario todos los productos que hay dentro del sistema, para que escoja al que desea agregarle más existencias
			FinPara
			Leer ProductoELiminar // se lee el producto al que le desea eliminar existencias
			Escribir "¿Cuántas unidades desea eliminar?"
			Leer UnidadesEliminar//se lee la cantidad de existencias que desea eliminar del producto
		Para i=ProductoEliminar hasta ProductoEliminar //esto es para que se edite solo el espacio de las unidades del producto elegido
			Si CantModelos[productoEliminar]>=UnidadesEliminar Entonces //si la cantidad que desea eliminar es menor a las que hay en stock entonces el proceso va a continuar con normalidad
				CantModelos[ProductoEliminar]<-CantModelos[ProductoEliminar]-UnidadesEliminar// a la cantidad de existencias  de "x" producto que hay en el sistema se le va a restar lo que el usuario indique		
			sino 
				si CantModelos[productoEliminar]<UnidadesEliminar Entonces //si la cantidad de existencias que desea eliminar es mayor a la cantidad de unidades del producto que hay en stock el proceso se detiene y vuelve al menú princial
					Escribir "No puedes quitar más productos de lo que hay en el sistema"	 //se le da el anuncio del error que ha ocurrido
				FinSi
			FinSi
		FinPara
		FinSegun
		Escribir "PRESIONA ENTER PARA VOLVER AL MENÚ DE OPCIONES"
		Esperar Tecla
		Limpiar Pantalla
	//Realizar una venta
	4:
		Escribir "  Marca  Modelo    Precio Cantidad   ID" //se le muestra al usuario los productos disponibles, para que escoja alguno
		para i=0 hasta contador-1 con paso 1 hacer 
			Escribir i," ", Marcas[i],"   ",Modelos[i],"   ","$",PrecioModelo[i],"   ",CantModelos[i],"   ",IdModelo[i]
			Escribir "==================================================================="
		FinPara	
		Escribir "¿Qué producto desea añadir al carrito?" //se le pregunta qué producto va a escoger
		Leer carrito //se lee la elección
		Escribir "¿Cuántas unidades deseas agregar?" //se le pregunta la cantidad de unidades que desea llevar
		Leer unidades //se lee la elección
		para i=carrito hasta carrito Hacer //se va a recorrer el arreglo solamente en el espacio que escogió el cliente
			VentaMarca[ContVentas]<- Marcas[carrito] //las elecciones del cliente se van a agregar en unos arreglos nuevos, los cuales se usarán para imprimir los valores más adelante
			VentaModelo[ContVentas]<- Modelos[carrito]
			VentaPrecio[ContVentas]<- PrecioModelo[carrito] * (unidades) //el precio guardado va a ser el precio unitario multiplicado por las unidades que va a llevar el cliente
			VentaCant[ContVentas]<- unidades //en las unidades simplemente se agrega la cantidad que escogió el cliente
			VentaID[ContVentas]<-IdModelo[carrito]
		FinPara
		CantModelos[carrito]<-CantModelos[carrito]-unidades//se le resta la cantidad de unidades que escogió el cliente a las existencias en stock que se tienen guardadas
		Escribir "PRESIONA ENTER PARA VOLVER AL MENÚ DE OPCIONES"
		esperar Tecla
		counter<-counter+1
		Limpiar Pantalla
	//Mostrar ventas realizadas
	5:
		para i=0 hasta ContVentas-1 Hacer //se imprimen los datos que se guardaron en el punto 4
			Escribir "=========COMPRA ",i+1,"==========="
			Escribir "Marca del producto: ",VentaMarca[i]
			Escribir "Modelo del producto: ",VentaModelo[i]
			Escribir "Unidades compradas: ",VentaCant[i]
			Escribir "ID del producto: ",VentaID[i]
			Escribir "Precio de venta: ","$",VentaPrecio[i]
		FinPara
		Escribir "==========================="
		//Escribir "====Total de ingresos======"
		//Para b=0 hasta ContVentas-1 Hacer
		//	Ganancias<-Ventaprecio[b]+Ventaprecio[b+1]
		//	Escribir Ganancias
		//FinPara
        Escribir "      SUPERMERCADO BM"
		Escribir "==========================="
		Escribir "PRESIONA ENTER PARA VOLVER AL MENÚ PRINCIPAL"
		Esperar Tecla
		Limpiar Pantalla
	//Se cierrra el programa
	6:
		boolean<-falso //se cambia la variable a "falso" para que se incumpla la condición del "mientras" y el programa se cierre
FinSegun
FinMientras
Escribir "Gracias por usar el programa, nos vemos luego :D" //despedida
FinAlgoritmo
//Desarrollado por Brayan Maldonado - Camper - TI 1090404470