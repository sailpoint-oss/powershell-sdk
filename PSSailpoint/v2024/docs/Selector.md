# Selector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | The application id | [optional] 
**AccountMatchConfig** | [**SelectorAccountMatchConfig**](SelectorAccountMatchConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Selector = Initialize-PSSailpoint.V2024Selector  -ApplicationId 2c91808874ff91550175097daaec161c&quot; `
 -AccountMatchConfig null
```

- Convert the resource to JSON
```powershell
$Selector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

