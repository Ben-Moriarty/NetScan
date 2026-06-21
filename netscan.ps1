$active_IPs = 1..254 | ForEach-Object -Parallel { Test-Connection -Count 1 192.168.0.$_ } -ThrottleLimit 10 |
Where-Object Status -eq Success |
Select-Object ComputerName, NetAdapter

Write-Host $active_IPs