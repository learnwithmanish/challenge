#List of Supported API Version
Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/versions" | ConvertTo-Json -Depth 64