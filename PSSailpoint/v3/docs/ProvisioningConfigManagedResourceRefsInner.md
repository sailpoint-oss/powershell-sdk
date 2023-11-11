# ProvisioningConfigManagedResourceRefsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of source for service desk integration template. | [optional] 
**Id** | **String** | ID of source for service desk integration template. | [optional] 
**Name** | **String** | Human-readable name of source for service desk integration template. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvisioningConfigManagedResourceRefsInner = Initialize-ProvisioningConfigManagedResourceRefsInner  -Type SOURCE `
 -Id 2c9180835d191a86015d28455b4b232a `
 -Name HR Active Directory
```

- Convert the resource to JSON
```powershell
$ProvisioningConfigManagedResourceRefsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

