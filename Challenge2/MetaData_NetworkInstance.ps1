#Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance?api-version=2021-12-13" | ConvertTo-Json -Depth 64

#Network Instance

Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance/network/interface/0?api-version=2021-12-13" | ConvertTo-Json -Depth 64