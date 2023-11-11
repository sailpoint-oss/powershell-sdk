# ProvisioningCompletedAccountRequestsInnerAttributeRequestsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttributeName** | **String** | The name of the attribute being provisioned. | 
**AttributeValue** | **String** | The value of the attribute being provisioned. | [optional] 
**Operation** | [**SystemCollectionsHashtable**](.md) | The operation to handle the attribute. | 

## Examples

- Prepare the resource
```powershell
$ProvisioningCompletedAccountRequestsInnerAttributeRequestsInner = Initialize-BetaProvisioningCompletedAccountRequestsInnerAttributeRequestsInner  -AttributeName memberOf `
 -AttributeValue CN&#x3D;jedi,DC&#x3D;starwars,DC&#x3D;com `
 -Operation Add
```

- Convert the resource to JSON
```powershell
$ProvisioningCompletedAccountRequestsInnerAttributeRequestsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

