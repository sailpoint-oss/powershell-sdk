# ScheduledSearchAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The scheduled search ID. | [optional] [readonly] 
**Owner** | [**ScheduledSearchAllOfOwner**](ScheduledSearchAllOfOwner.md) |  | [optional] 
**OwnerId** | **String** | The ID of the scheduled search owner.  Please use the &#x60;id&#x60; in the &#x60;owner&#x60; object instead.  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ScheduledSearchAllOf = Initialize-ScheduledSearchAllOf  -Id 0de46054-fe90-434a-b84e-c6b3359d0c64 `
 -Owner null `
 -OwnerId 2c9180867624cbd7017642d8c8c81f67
```

- Convert the resource to JSON
```powershell
$ScheduledSearchAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

