#Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance?api-version=2021-12-13" | ConvertTo-Json -Depth 64

#Stroage Profile
Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance/compute/storageProfile?api-version=2021-12-13" | converto-json -Depth 64
