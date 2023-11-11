# ScheduledSearchAllOfOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of object being referenced | 
**Id** | **String** | The ID of the referenced object | 

## Examples

- Prepare the resource
```powershell
$ScheduledSearchAllOfOwner = Initialize-ScheduledSearchAllOfOwner  -Type IDENTITY `
 -Id 2c9180867624cbd7017642d8c8c81f67
```

- Convert the resource to JSON
```powershell
$ScheduledSearchAllOfOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

