#Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance?api-version=2021-12-13" | ConvertTo-Json -Depth 64

#List of Tags with VM
#To get Text output
Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance/compute/tags?api-version=2021-12-13&format=text"

#To get JSON output
Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance/compute/tagsList?api-version=2021-12-13" | ConvertTo-Json -Depth 64