# ProvisioningCompletedRequester
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Provisioning requester&#39;s DTO type. | 
**Id** | **String** | Provisioning requester&#39;s identity ID. | 
**Name** | **String** | Provisioning owner&#39;s human-readable display name. | 

## Examples

- Prepare the resource
```powershell
$ProvisioningCompletedRequester = Initialize-BetaProvisioningCompletedRequester  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20648 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$ProvisioningCompletedRequester | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

