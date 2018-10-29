Algoritmo sin_titulo
	definir N Como Entero
	definir nota1,nota2,acum como real
	
	mostrar "Ingrese la Cantidad de studiantes a procesar: "
	leer N
	dimension nota1[N]
	dimension nota2[N]
	dimension acum[N]
	para i=1 hasta N con paso 1 Hacer
		nota1[i]=aleatorio(0,100)
		nota2[i]=aleatorio(0,100)
	FinPara
	para i=1 hasta N con paso 1 Hacer
		acum[i]=nota1[i]+nota2[i]
	FinPara
	Para i=1 hasta N
		mostrar "La nota acumulada del alumno " i " es: " acum[i]
	FinPara
FinAlgoritmo
