# GetHistoricalIdentityEvents200ResponseInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessItem** | [**AccessItemAssociatedAccessItem**](AccessItemAssociatedAccessItem.md) |  | [optional] 
**IdentityId** | **String** | the identity id | [optional] 
**EventType** | **String** | the event type | [optional] 
**Dt** | **String** | the date of event | [optional] 
**GovernanceEvent** | [**CorrelatedGovernanceEvent**](CorrelatedGovernanceEvent.md) |  | [optional] 
**Changes** | [**AttributeChange[]**](AttributeChange.md) |  | [optional] 
**AccessRequest** | [**AccessRequestResponse**](AccessRequestResponse.md) |  | [optional] 
**CertificationId** | **String** | the id of the certification item | [optional] 
**CertificationName** | **String** | the certification item name | [optional] 
**SignedDate** | **String** | the date ceritification was signed | [optional] 
**Certifiers** | [**CertifierResponse[]**](CertifierResponse.md) | this field is deprecated and may go away | [optional] 
**Reviewers** | [**CertifierResponse[]**](CertifierResponse.md) | The list of identities who review this certification | [optional] 
**Signer** | [**CertifierResponse**](CertifierResponse.md) |  | [optional] 
**Account** | [**AccountStatusChangedAccount**](AccountStatusChangedAccount.md) |  | [optional] 
**StatusChange** | [**AccountStatusChangedStatusChange**](AccountStatusChangedStatusChange.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetHistoricalIdentityEvents200ResponseInner = Initialize-BetaGetHistoricalIdentityEvents200ResponseInner  -AccessItem null `
 -IdentityId null `
 -EventType null `
 -Dt null `
 -GovernanceEvent null `
 -Changes null `
 -AccessRequest null `
 -CertificationId 2c91808a77ff216301782327a50f09bf `
 -CertificationName Cert name `
 -SignedDate 2019-03-08T22:37:33.901Z `
 -Certifiers [{id&#x3D;8a80828f643d484f01643e14202e206f, displayName&#x3D;John Snow}] `
 -Reviewers [{id&#x3D;8a80828f643d484f01643e14202e206f, displayName&#x3D;John Snow}] `
 -Signer null `
 -Account null `
 -StatusChange null
```

- Convert the resource to JSON
```powershell
$GetHistoricalIdentityEvents200ResponseInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

