# LifecyclestateDeleted
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Deleted lifecycle state&#39;s DTO type. | [optional] 
**Id** | **String** | Deleted lifecycle state ID. | [optional] 
**Name** | **String** | Deleted lifecycle state&#39;s display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$LifecyclestateDeleted = Initialize-LifecyclestateDeleted  -Type LIFECYCLE_STATE `
 -Id 12345 `
 -Name Contractor Lifecycle
```

- Convert the resource to JSON
```powershell
$LifecyclestateDeleted | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

