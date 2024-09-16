# InviteIdentitiesRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **String[]** | The list of Identities IDs to invite - required when &#39;uninvited&#39; is false | [optional] 
**Uninvited** | **Boolean** | indicator (optional) to invite all unregistered identities in the system within a limit 1000. This parameter makes sense only when &#39;ids&#39; is empty. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$InviteIdentitiesRequest = Initialize-PSSailpoint.BetaInviteIdentitiesRequest  -Ids [2b568c65bc3c4c57a43bd97e3a8e55, 2c9180867769897d01776ed5f125512f] `
 -Uninvited false
```

- Convert the resource to JSON
```powershell
$InviteIdentitiesRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

