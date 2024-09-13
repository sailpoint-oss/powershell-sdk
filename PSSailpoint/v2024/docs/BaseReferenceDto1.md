# BaseReferenceDto1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the application ID | [optional] 
**Name** | **String** | the application name | [optional] 

## Examples

- Prepare the resource
```powershell
$BaseReferenceDto1 = Initialize-PSSailpoint.V2024BaseReferenceDto1  -Id ff8081814d977c21014da056804a0af3 `
 -Name Github
```

- Convert the resource to JSON
```powershell
$BaseReferenceDto1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

