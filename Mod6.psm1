function RedActual
{  

$perfilRed = Get-NetConnectionProfile  

Write-Host "Nombre de tu red:" $perfilRed.Name  

Write-Host "Perfil de tu red:" $perfilRed.NetworkCategory

Write-Host "Conectividad de tu red:" $perfilRed.InterfaceAlias

Write-Host "InterfaceIndex;" $perfilRed.InterfaceIndex

}  

function VerIP
{  

$IP = Get-NetIPAddress 

Write-Host "Ip:" $IP.IPAddress 

Write-Host "Alias:" $IP.Type

Write-Host "Alias:" $IP.AddressFamily

}  

function ContraseñaSI {
    Param (
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [Security.SecureString]$Password=$(Throw "Password required.")
    )

    Process {
        Write-Host "-----------------------"
        Write-Host "Bienvenido al Sistema de Red "
        Write-Host "-----------------------"
    }
}



