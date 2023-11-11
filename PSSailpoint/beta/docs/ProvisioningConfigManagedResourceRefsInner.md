# ProvisioningConfigManagedResourceRefsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**SystemCollectionsHashtable**](.md) | The type of object being referenced | [optional] 
**Id** | [**SystemCollectionsHashtable**](.md) | ID of the source | [optional] 
**Name** | [**SystemCollectionsHashtable**](.md) | Human-readable display name of the source | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvisioningConfigManagedResourceRefsInner = Initialize-BetaProvisioningConfigManagedResourceRefsInner  -Type SOURCE `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name My Source
```

- Convert the resource to JSON
```powershell
$ProvisioningConfigManagedResourceRefsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

