# ProvisioningCompleted
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TrackingNumber** | **String** | The reference number of the provisioning request. Useful for tracking status in the Account Activity search interface. | 
**Sources** | **String** | One or more sources that the provisioning transaction(s) were done against.  Sources are comma separated. | 
**Action** | **String** | Origin of where the provisioning request came from. | [optional] 
**Errors** | **String[]** | A list of any accumulated error messages that occurred during provisioning. | [optional] 
**Warnings** | **String[]** | A list of any accumulated warning messages that occurred during provisioning. | [optional] 
**Recipient** | [**ProvisioningCompletedRecipient**](ProvisioningCompletedRecipient.md) |  | 
**Requester** | [**ProvisioningCompletedRequester**](ProvisioningCompletedRequester.md) |  | [optional] 
**AccountRequests** | [**ProvisioningCompletedAccountRequestsInner[]**](ProvisioningCompletedAccountRequestsInner.md) | A list of provisioning instructions to perform on an account-by-account basis. | 

## Examples

- Prepare the resource
```powershell
$ProvisioningCompleted = Initialize-BetaProvisioningCompleted  -TrackingNumber 4b4d982dddff4267ab12f0f1e72b5a6d `
 -Sources Corp AD, Corp LDAP, Corp Salesforce `
 -Action IdentityRefresh `
 -Errors null `
 -Warnings null `
 -Recipient null `
 -Requester null `
 -AccountRequests null
```

- Convert the resource to JSON
```powershell
$ProvisioningCompleted | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

