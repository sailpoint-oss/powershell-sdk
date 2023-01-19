# ScheduledSearchAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The scheduled search ID.  | [optional] 
**Owner** | [**TypedReference**](TypedReference.md) |  | [optional] 
**OwnerId** | **String** | The ID of the scheduled search owner | [optional] 

## Examples

- Prepare the resource
```powershell
$ScheduledSearchAllOf = Initialize-PSSailpointScheduledSearchAllOf  -Id 0de46054-fe90-434a-b84e-c6b3359d0c64 `
 -Owner null `
 -OwnerId 2c9180867624cbd7017642d8c8c81f67
```

- Convert the resource to JSON
```powershell
$ScheduledSearchAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

