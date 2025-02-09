# Deploy Azure Logic App Workflow
param(
    [Parameter(Mandatory=$true)]
    [string]$SubscriptionId,
    
    [Parameter(Mandatory=$true)]
    [string]$ResourceGroupName,
    
    [Parameter(Mandatory=$true)]
    [string]$Location,
    
    [Parameter(Mandatory=$true)]
    [string]$WorkflowName
)

# Login to Azure (if not already logged in)
$context = Get-AzContext
if (!$context) {
    Connect-AzAccount
}

# Set subscription context
Set-AzContext -SubscriptionId $SubscriptionId

# Create resource group if it doesn't exist
$rg = Get-AzResourceGroup -Name $ResourceGroupName -ErrorAction SilentlyContinue
if (!$rg) {
    New-AzResourceGroup -Name $ResourceGroupName -Location $Location
}

# Deploy Logic App
$templatePath = Join-Path $PSScriptRoot "..\workflows\main-workflow.json"
$templateParameterPath = Join-Path $PSScriptRoot "..\config\settings.json"

New-AzResourceGroupDeployment `
    -Name "Deploy-$WorkflowName-$(Get-Date -Format 'yyyyMMddHHmmss')" `
    -ResourceGroupName $ResourceGroupName `
    -TemplateFile $templatePath `
    -TemplateParameterFile $templateParameterPath `
    -workflowName $WorkflowName