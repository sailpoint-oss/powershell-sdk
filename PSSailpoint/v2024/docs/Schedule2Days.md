# Schedule2Days
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | The application id | [optional] 
**AccountMatchConfig** | [**SelectorAccountMatchConfig**](SelectorAccountMatchConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule2Days = Initialize-PSSailpoint.V2024Schedule2Days  -ApplicationId 2c91808874ff91550175097daaec161c&quot; `
 -AccountMatchConfig null
```

- Convert the resource to JSON
```powershell
$Schedule2Days | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

