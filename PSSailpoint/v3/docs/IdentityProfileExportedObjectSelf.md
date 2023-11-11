# IdentityProfileExportedObjectSelf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Exported object&#39;s DTO type. | [optional] 
**Id** | **String** | Exported object&#39;s ID. | [optional] 
**Name** | **String** | Exported object&#39;s display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProfileExportedObjectSelf = Initialize-IdentityProfileExportedObjectSelf  -Type SOURCE `
 -Id 2c9180835d191a86015d28455b4b232a `
 -Name HR Active Directory
```

- Convert the resource to JSON
```powershell
$IdentityProfileExportedObjectSelf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

