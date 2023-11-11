# ProvisioningCompletedRecipient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Provisioning recipient DTO type. | 
**Id** | **String** | Provisioning recipient&#39;s identity ID. | 
**Name** | **String** | Provisioning recipient&#39;s display name. | 

## Examples

- Prepare the resource
```powershell
$ProvisioningCompletedRecipient = Initialize-BetaProvisioningCompletedRecipient  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20642 `
 -Name Michael Michaels
```

- Convert the resource to JSON
```powershell
$ProvisioningCompletedRecipient | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

