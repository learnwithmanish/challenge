$templatefile = 'AppInfra.json'
$parameterfile = 'ParameterFile.json'
$rg = "MyAPP3"
New-azresourceGroup -Name $rg -location centralindia -force
New-AzResourceGroupDeployment -Name Deployment11 -ResourceGroupName $rg -TemplateFile $templatefile -TemplateParameterFile $parameterfile
