Algoritmo acumulador
	definir sexo,nombre Como Caracter
	definir cont_aprob,cant_alumnos,nota,sum_notas,cont_mujer como entero
	definir prom_alumno,porcentaje,sum_seccion Como Real
	
	sum_seccion=0
	cant_alumnos=0
	cont_mujer=0
	cont_aprob=0
	
	mostrar "Cuantos Alumnos desea procesar?: "
	leer cant_alumnos
	mostrar " "
	para i<-1 hasta cant_alumnos Con Paso 1 hacer
		mostrar "Ingrese el nombre del alumno: "
		leer nombre
		mostrar "Ingrese el sexo del alumno(F o M): "
		leer sexo
		sexo=mayusculas(sexo)
		prom_alumno=0
		sum_notas=0
		si sexo<>"M" y sexo<>"F" entonces
			mostrar "Por favor ingrese la letra correcta para el sexo del alumno(F o M): "
			leer sexo
			sexo=mayusculas(sexo)
		FinSi
		para j<-1 hasta 5 Con Paso 1 hacer
			mostrar " "
			mostrar "Ingrese la nota del alumno: "
			leer nota
			si nota<0 o nota>100
				mostrar "por favor Ingrese una nota valida para el alumno: "
				leer nota
			FinSi
			sum_notas=sum_notas+nota
		Finpara
		prom_alumno=sum_notas/5
		sum_seccion=prom_alumno+sum_seccion
		si prom_alumno>80 y sexo="F" entonces
			cont_mujer=cont_mujer+1
		FinSi
		si prom_alumno>=80 entonces
			cont_aprob=cont_aprob+1
		FinSi
		Mostrar "El promedio de notas de " nombre " es de: " prom_alumno
	Finpara
	porcentaje=(cont_aprob/cant_alumnos)*100
	prom_seccion=sum_seccion/cant_alumnos
	mostrar " "
	mostrar " "
	Mostrar "El promedio de notas de la seccion es: " prom_seccion
	Mostrar "El porcentaje de alumnos aprobados en la seccion es: " porcentaje "%"
	Mostrar "La cantidad de mujeres con promedio mayor a 80 es: " cont_mujer
	esperar tecla
	Limpiar Pantalla
FinAlgoritmo
