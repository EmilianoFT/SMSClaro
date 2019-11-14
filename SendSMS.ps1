<#
    Ejemplo de consumo de api de la empresa Claro para envío de notificaciones oficiales de la empresa a un número de teléfono de la misma empresa.
    Este script fue desarrollado para fines educativos.
    El uso fraudulento puede estar penado por la ley.
    
    Autor: Emiliano Traba.
    Fecha: 13/11/2019
#>

Write-Host 'Autor: Emiliano Traba.'
Write-Host 'Fecha: 13/11/2019'
Write-Host ''

$phone = Read-Host -Prompt 'Input phone number'
$msj = Read-Host -Prompt 'Input message'

Invoke-WebRequest -Uri "https://comunicadordpf5.claro.com.ar/Home/SendSMS" -Method "POST" -Headers @{"Accept"="application/json, text/javascript, */*; q=0.01"; "Origin"="https://comunicadordpf5.claro.com.ar"; "X-Requested-With"="XMLHttpRequest"; "User-Agent"="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36"; "Sec-Fetch-Site"="same-origin"; "Sec-Fetch-Mode"="cors"; "Referer"="https://comunicadordpf5.claro.com.ar/Home/SendPrepago?Length=4"; "Accept-Encoding"="gzip, deflate, br"; "Accept-Language"="es-419,es;q=0.9,en;q=0.8"; "Cookie"="ASP.NET_SessionId=iofliqpcrsnabetywvllhvdb"} -ContentType "application/json; charset=UTF-8" -Body "{`"cel_number`":`"$phone`",`"subject`":`"`",`"mensaje`":`"$msj`"}"
