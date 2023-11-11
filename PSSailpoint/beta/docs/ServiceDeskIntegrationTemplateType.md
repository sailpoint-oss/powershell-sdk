# ServiceDeskIntegrationTemplateType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | This is the name of the type. | [optional] 
**Type** | **String** | This is the type value for the type. | 
**ScriptName** | **String** | This is the scriptName attribute value for the type. | 

## Examples

- Prepare the resource
```powershell
$ServiceDeskIntegrationTemplateType = Initialize-BetaServiceDeskIntegrationTemplateType  -Name aName `
 -Type aType `
 -ScriptName aScriptName
```

- Convert the resource to JSON
```powershell
$ServiceDeskIntegrationTemplateType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

