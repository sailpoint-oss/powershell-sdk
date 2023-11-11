# RoleBulkDeleteRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleIds** | **String[]** | List of IDs of Roles to be deleted. | 

## Examples

- Prepare the resource
```powershell
$RoleBulkDeleteRequest = Initialize-RoleBulkDeleteRequest  -RoleIds [2c9180847812e0b1017817051919ecca, 2c9180887812e0b201781e129f151816]
```

- Convert the resource to JSON
```powershell
$RoleBulkDeleteRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

