# ProvisioningCompletedAccountRequestsInnerSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the object to which this reference applies | 
**Type** | **String** | The type of object that is referenced | 
**Name** | **String** | Human-readable display name of the object to which this reference applies | 

## Examples

- Prepare the resource
```powershell
$ProvisioningCompletedAccountRequestsInnerSource = Initialize-BetaProvisioningCompletedAccountRequestsInnerSource  -Id 4e4d982dddff4267ab12f0f1e72b5a6d `
 -Type SOURCE `
 -Name Corporate Active Directory
```

- Convert the resource to JSON
```powershell
$ProvisioningCompletedAccountRequestsInnerSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

