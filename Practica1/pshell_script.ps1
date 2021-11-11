function mult_tab{
    for($i = 1; $i -lt 11; $i++){
        Write-Host $i 'x' $num '=' ($i*$num)
    }
}
Write-Host "`nTabla de multiplicar de numeros positivos"
[int]$num = [int](Read-Host -Prompt "Escribe un numero: ")
if($num -ge 0){
    mult_tab($num)
}
else{
    Write-Host "El numero es negativo"
}
