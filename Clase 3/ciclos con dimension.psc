Algoritmo sin_titulo
	definir cont_positivos,cont_negativos como real
	cont_positivos=0
	cont_negativos=0
	Limpiar Pantalla
	dimension numero[15]
	para i=1 hasta 15 con paso 1 Hacer
		numero[i]=aleatorio(-20,20)
	FinPara
	mostrar "Los numeros positivos generados son: "
	para i=1 hasta 15 con paso 1 Hacer
		si numero[i]>0 entonces
			mostrar "El numero " numero[i] " en la pocision " i
			cont_positivos=cont_positivos+1
		FinSi
	FinPara
	mostrar " "
	mostrar " "
	mostrar "Los numeros negativos generados son: "
	para i=1 hasta 15 con paso 1 Hacer
		si numero[i]<0 entonces
			mostrar "El numero " numero[i] " en la pocision " i
			cont_negativos=cont_negativos+1
		FinSi
	FinPara
	mostrar " "
	mostrar " "
	mostrar "Hay " cont_positivos " numero positivos."
	mostrar "Hay " cont_negativos " numero negativos."
FinAlgoritmo
