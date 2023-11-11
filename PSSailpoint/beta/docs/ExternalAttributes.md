# ExternalAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | A unique name for the external trigger | 
**Description** | **String** | Additonal context about the external trigger | [optional] 

## Examples

- Prepare the resource
```powershell
$ExternalAttributes = Initialize-BetaExternalAttributes  -Name search-and-notify `
 -Description Run a search and notify the results
```

- Convert the resource to JSON
```powershell
$ExternalAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

