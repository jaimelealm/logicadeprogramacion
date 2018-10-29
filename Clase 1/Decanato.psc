SubProceso leer_datos(nombre_part por referencia,area_curso por referencia,costo_curso por referencia)
	Escribir " nombre del participante: " Sin Saltar
	leer nombre_part
	mostrar " "
	Escribir "area del curso " Sin Saltar
	leer area_curso
	mostrar " "
	Escribir  "monto del curso " Sin Saltar
	Leer costo_curso
	mostrar " "
FinSubProceso
SubProceso calculos(cuota_inic por referencia,cuota_mens por referencia,costo_curso)
	cuota_inic=costo_curso*0.2
	cuota_mens=(costo_curso*0.8)/24
FinSubProceso
subproceso mostrar_datos(nombre_part,area_curso,costo_curso,cuota_inic,cuota_mens)
	mostrar "nombre del partipante inscrito: " , nombre_part 
	mostrar "curso a aplicar ", area_curso	
	Mostrar "monto del curso a pagar: " , costo_curso
	Mostrar "cuota inicial a pagar: ", cuota_inic 
	Mostrar "cuota mensual apagar: ", cuota_mens 
FinSubProceso
Algoritmo sin_titulo
	definir respuesta Como caracter
	Limpiar Pantalla
	Repetir
		mostrar "MENU DE OPCIONES:"
		mostrar "1: Ingrese Datos"
		mostrar "2: Procesar Datos"
		mostrar "3: Mostrar Resultados"
		mostrar "4: Salir"
		leer respuesta
		segun respuesta hacer
			"1": leer_datos(nombre_part,area_curso,costo_curso)
			"2": calculos(cuota_inic,cuota_mens,costo_curso)
			"3": mostrar_datos(nombre_part,area_curso,costo_curso,cuota_inic,cuota_mens)
			"4": mostrar "Gracias"
			De Otro Modo:
				mostrar "Favor colocar una opcion valida entre 1 y 4" 
		fin segun
	Hasta Que respuesta="4"
FinAlgoritmo
