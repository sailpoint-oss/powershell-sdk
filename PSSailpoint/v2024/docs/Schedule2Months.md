# Schedule2Months
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | The application id | [optional] 
**AccountMatchConfig** | [**SelectorAccountMatchConfig**](SelectorAccountMatchConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule2Months = Initialize-PSSailpoint.V2024Schedule2Months  -ApplicationId 2c91808874ff91550175097daaec161c&quot; `
 -AccountMatchConfig null
```

- Convert the resource to JSON
```powershell
$Schedule2Months | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

