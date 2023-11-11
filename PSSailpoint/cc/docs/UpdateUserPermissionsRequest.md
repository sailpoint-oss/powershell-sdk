# UpdateUserPermissionsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **String** |  | [optional] 
**IsAdmin** | **String** | Indicates if user should be an IDN Admin.  &quot;&quot;0&quot;&quot; for false, &quot;&quot;1&quot;&quot; for true. | [optional] 
**AdminType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateUserPermissionsRequest = Initialize-CCUpdateUserPermissionsRequest  -Ids 71624,71625 `
 -IsAdmin 1 `
 -AdminType null
```

- Convert the resource to JSON
```powershell
$UpdateUserPermissionsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

