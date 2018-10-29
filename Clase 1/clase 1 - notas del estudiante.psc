Algoritmo sin_titulo
	definir i,contador_genios,acumulador_seccion,acumulador_reprobados,acumulador_aprobados Como Entero
	definir nota Como Real
	
	contador_genios=0
	acumulador_seccion=0
	acumulador_reprobados=0
	acumulador_aprobados=0
	para i=1 hasta 5 con paso 1
		mostrar "Nota del estudiante " i ": " Sin Saltar
		leer nota
		acumulador_seccion=acumulador_seccion+nota
		si nota=100
			contador_genios=contador_genios+1
		FinSi
		si nota<50
			acumulador_reprobados=acumulador_reprobados+nota
		FinSi
		si nota>=50
			acumulador_aprobados=acumulador_aprobados+nota
		FinSi
	FinPara
	mostrar "Numero de estudiantes con nota perfecta: " contador_genios
	mostrar "La acumulacion de todas las notas de las seccion es: " acumulador_seccion
	mostrar "La acumulacion de todas las notas Aprobadas es: " acumulador_aprobados
	mostrar "La acumulacion de todas las notas Reprobadas es: " acumulador_reprobados
FinAlgoritmo
