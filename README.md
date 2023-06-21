# Challenge

# Challenge 1 : A 3-Tier Environment Setup
I have used **Azure Cloud and ARM Templates** to setup the 3 Tier Infra Setup. 

The Setup Consists of :
- **1 Application Gateway**: To receive the request from Internet on it's FrontEND Public IP
- **1 Virtual Network with 4 Subnets**: I created 4 subnets to separate the Web layer, APP layer and DB layer and Management Layer
- **7 Virtual Machines** : Created 2 VMs for App layer, 2 VMs for Web Layer , 2 VMS of DB layer(SQL), and 1 VM to Manage Infra
- **1 Load Balancer** : To distribute traffic internally from Web Layer to App Layer
- **1 Bastion Host** : To securly access the infra for admins
- **NSGs** : To Secure the traffic from one subnet to another.

**The 3 Tier infra has one Applicaiton Gateway which will recieve the client request from outside on it's frontend IP. After that it will forward the traffice to WEB layer VMS which are the part of App Gateway Backend Pool. Then WEB layer VMs will communicate with App layer VMs with the help of Load Balancer. Only web layer VMs has access to App Layer VMs. then finally, the APP layer VMs will communicate to DB layer. DB layer can only be access by App layer.**

**Execution of ARM template json files. 
There are three files
      1. AppInfra.json
      2. ParameterFile.json
      3. Deploy.ps1

      Use Powershell 7.0 and above to execute Deploy.ps1. Connect the Azure Subscription from Powershell by using Connect-AzAccount
      Save all three files in one folder.
      Open the powershell in 'run as admin' mode.
      go to the folder where all 3 files are kept 
      execute the ps1 file.

      **Notes***
      To change the Resource Group Name-> edit the Deploy.ps1 file
      To change any default value of parmaters -> edit the ParameterFile.json file (parameters section)
      To change any value in variables-> edit the AppInfra.json file(variable section)







# Challenge 2: Code to query MetaData Informaion of Cloud Instances.I have used Azure Cloud and Powershell for this Challenge. 
We have one service available in Azure called Azure Instance Metadata Service. This service allows to get meta data info. 

Pre-Requsite: PowerShell 7.0 and above, Azure Subscription
Limitations: All commands need to run inside the Azure Instance or VM only. 

I have created below scipts to find out MetaData complete info and Individual Key Info. 

## MetaDataCompleteInfo.ps1
This script will provide JSON output. The JSON file will consist of whole metadata information.

## MetaData_VMTags.ps1
This script will provide JSON output. The JSON file will consist of whole metadata information.
The key part here is to modify the metadata uri "http://169.254.169.254/metadata/instance?api-version=2021-12-13"
for example to get the Details of VM Tags we need to append the uri like this http://169.254.169.254/metadata/instance/compute/tagsList?api-version=2021-12-13

## MetaData_StorageProfile.ps1
This script will provide JSON output. The JSON file will consist Storage Profile.
The key part here is to modify the metadata uri "http://169.254.169.254/metadata/instance?api-version=2021-12-13"
for example to get the Details of VM Tags we need to append the uri like this http://169.254.169.254/metadata/instance/compute/storageProfile?api-version=2021-12-13

## MetaData_ListofSupportedAPIVersion.ps1
This script will provide JSON output. The JSON file will provide the list of API versions to be supported.

## MetaData_NetworkInstance.ps1
This script will provide JSON output. The JSON file will consist Network Instance Details.

## MetaData_Compute.ps1
This script will provide JSON output. The JSON file will consist Compute Related JSON output.




# Challenge 3: 
