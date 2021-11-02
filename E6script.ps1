#Juan Angel Facundo Lopez
#Jose Luis Razon Leyva
#Jesus Alexanddro Cervanntes Hernandez
#la contraseña antes de iniciar el script puede ser cualquiera
# Objetivo del script:Obtener datos de red
Import-Module Mod6

ContraseñaSI

Function showmenu 
{
    Clear-Host
  
   Write-Host "Menu"
   
     Write-Host "2.RedActual"
      Write-Host "3.VerIP"
       Write-Host "4. Salir"
}
 
showmenu
 
while(($inp = Read-Host -Prompt "Selecciona un numero") -ne "4")
{
 
switch($inp){
        1 {
            Clear-Host
            Get-NetIPsecRule;
            pause;
            break
          }
        2 {
            Clear-Host
            RedActual;
            pause;
            break
          }
        3 {
            Clear-Host
            ContraseñaSI; 
            pause;
            break
            
          }
  
      
        4 {"Exit"; break}
            default {Read-Host "opcion invalida, selecciona otra opcion";pause}
        
          }
 
showmenu
}