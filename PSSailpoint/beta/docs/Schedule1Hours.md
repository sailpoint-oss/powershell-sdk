# Schedule1Hours
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | The application id | [optional] 
**AccountMatchConfig** | [**SelectorAccountMatchConfig**](SelectorAccountMatchConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule1Hours = Initialize-PSSailpoint.BetaSchedule1Hours  -ApplicationId 2c91808874ff91550175097daaec161c&quot; `
 -AccountMatchConfig null
```

- Convert the resource to JSON
```powershell
$Schedule1Hours | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

