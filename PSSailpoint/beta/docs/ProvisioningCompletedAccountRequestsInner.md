# ProvisioningCompletedAccountRequestsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | [**ProvisioningCompletedAccountRequestsInnerSource**](ProvisioningCompletedAccountRequestsInnerSource.md) |  | 
**AccountId** | **String** | The unique idenfier of the account being provisioned. | [optional] 
**AccountOperation** | **String** | The provisioning operation; typically Create, Modify, Enable, Disable, Unlock, or Delete. | 
**ProvisioningResult** | [**SystemCollectionsHashtable**](.md) | The overall result of the provisioning transaction; this could be success, pending, failed, etc. | 
**ProvisioningTarget** | **String** | The name of the provisioning channel selected; this could be the same as the source, or could be a Service Desk Integration Module (SDIM). | 
**TicketId** | **String** | A reference to a tracking number, if this is sent to a Service Desk Integration Module (SDIM). | [optional] 
**AttributeRequests** | [**ProvisioningCompletedAccountRequestsInnerAttributeRequestsInner[]**](ProvisioningCompletedAccountRequestsInnerAttributeRequestsInner.md) | A list of attributes as part of the provisioning transaction. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvisioningCompletedAccountRequestsInner = Initialize-BetaProvisioningCompletedAccountRequestsInner  -Source null `
 -AccountId CN&#x3D;Chewy.Bacca,ou&#x3D;hardcorefigter,ou&#x3D;wookies,dc&#x3D;starwars,dc&#x3D;com `
 -AccountOperation Modify `
 -ProvisioningResult SUCCESS `
 -ProvisioningTarget Corp AD `
 -TicketId 72619262 `
 -AttributeRequests null
```

- Convert the resource to JSON
```powershell
$ProvisioningCompletedAccountRequestsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

