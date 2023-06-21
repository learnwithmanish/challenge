#Challenge

Challenge 1 : A 3-Tier Environment Setup



Challenge 2: Code to query MetaData Informaion of Cloud Instances.I have used Azure Cloud and Powershell for this Challenge. 
We have one service available in Azure called Azure Instance Metadata Service. This service allows to get meta data info. 

Pre-Requsite: PowerShell 7.0 and above, Azure Subscription
Limitations: All commands need to run inside the Azure Instance or VM only. 

I have created below scipts to find out MetaData complete info and Individual Key Info. 

#MetaDataCompleteInfo.ps1
This script will provide JSON output. The JSON file will consist of whole metadata information.

#MetaData_VMTags.ps1
This script will provide JSON output. The JSON file will consist of whole metadata information.
The key part here is to modify the metadata uri "http://169.254.169.254/metadata/instance?api-version=2021-12-13"
for example to get the Details of VM Tags we need to append the uri like this http://169.254.169.254/metadata/instance/compute/tagsList?api-version=2021-12-13

#MetaData_StorageProfile.ps1
This script will provide JSON output. The JSON file will consist Storage Profile.
The key part here is to modify the metadata uri "http://169.254.169.254/metadata/instance?api-version=2021-12-13"
for example to get the Details of VM Tags we need to append the uri like this http://169.254.169.254/metadata/instance/compute/storageProfile?api-version=2021-12-13

#MetaData_ListofSupportedAPIVersion.ps1
This script will provide JSON output. The JSON file will provide the list of API versions to be supported.

#MetaData_NetworkInstance.ps1
This script will provide JSON output. The JSON file will consist Network Instance Details.

#MetaData_Compute.ps1
This script will provide JSON output. The JSON file will consist Compute Related JSON output.




Challenge 3: 
