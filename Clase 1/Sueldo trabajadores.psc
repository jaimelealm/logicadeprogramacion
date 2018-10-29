funcion sueldo<-func_leer_sueldo()
	mostrar "Indique Sueldo del Trabajador: "
	leer sueldo
	Mientras sueldo<1
		mostrar "Indique un monto correcto para el sueldo del trabajador: "
		leer sueldo
	FinMientras
FinFuncion
funcion edad<-func_leer_edad()
	mostrar "Indique la edad del Trabajador: "
	leer edad
	Mientras edad<18
		mostrar "Indique la edad correcta para el Trabajador: "
		leer edad
	FinMientras
FinFuncion
funcion sexo<-func_leer_sexo()
	mostrar "Indique Sexo del Trabajador (F o M): "
	leer sexo
	sexo=mayusculas(sexo)
	Mientras sexo!="F" y sexo!="M"
		mostrar "Indique una letra correcta para el Sexo del Trabajador (F o M): "
		leer sexo
		sexo=mayusculas(sexo)
	FinMientras
FinFuncion
funcion otro_trab<-func_otro_trabajador()
	mostrar "Desea Ingresar otro trabajador? (S o N): "
	leer otro_trab
	otro_trab=Mayusculas(otro_trab)
	Mientras otro_trab!="S" y otro_trab!="N"
		mostrar "Indique la letra correcta para indicar si desea Ingresar otro trabajador? (S o N): "
		leer otro_trab
		otro_trab=Mayusculas(otro_trab)
	FinMientras
FinFuncion

Algoritmo sin_titulo
	definir sexo,respuesta Como Caracter
	definir edad,cont_mujer_30,acumulador1,cont_hombres,cont_trab_totales Como entero
	contador1=0
	acumulador1=0
	contador2=0
	Repetir
		sexo=func_leer_sexo()
		edad=func_leer_edad()
		sueldo=func_leer_sueldo()
		cont_trab_totales=cont_trab_totales+1
		si edad>50 y sexo="F"
			cont_mujer_30=cont_mujer_30+1
		FinSi
		si sexo="M"
			cont_hombres=cont_hombres+1
		FinSi
		si edad>30
			acumulador1=acumulador1+sueldo
		FinSi
		otro_trab=func_otro_trabajador()
	Hasta Que otro_trab="N"
	mostrar "La Cantidad de empleados femeninos mayor a 30 años es: " cont_mujer_30
	mostrar "La Cantidad de trabajadores masculino es: " cont_hombres
	mostrar "La cantidad total de trabajadores es: " cont_trab_totales
	mostrar "El acumulado de sueldos de trabajadores mayores de 30 años es: " acumulador1 
FinAlgoritmo
