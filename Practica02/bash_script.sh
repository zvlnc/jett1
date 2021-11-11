#!/bin/bash

suma () {
	for i in 0 1
		do
		 echo "Ingrese algún valor númerico #$i: "
		 read NumV
		 if [[ $NumV -gt 100 ]]
		 then
		 	arr[$i]=$NumV
		 else
		 	echo "Ingrese un número con valor mayor a 100."
		 	echo "Ingrese su valor númerico #$i: "
			read NumVar
			arr[$i]=$NumVar
		 fi
		done
	suma=$((arr[0] + arr[1]))
	echo La suma de los números es : $suma
}
suma
