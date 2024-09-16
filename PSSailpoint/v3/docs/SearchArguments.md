# SearchArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ScheduleId** | **String** | The ID of the scheduled search that triggered the saved search execution.  | [optional] 
**Owner** | [**TypedReference**](TypedReference.md) |  | [optional] 
**Recipients** | [**TypedReference[]**](TypedReference.md) | The email recipients of the scheduled search being tested.  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchArguments = Initialize-PSSailpoint.V3SearchArguments  -ScheduleId 7a724640-0c17-4ce9-a8c3-4a89738459c8 `
 -Owner null `
 -Recipients null
```

- Convert the resource to JSON
```powershell
$SearchArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

