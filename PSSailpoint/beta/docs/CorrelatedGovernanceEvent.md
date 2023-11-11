# CorrelatedGovernanceEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the governance event, such as the certification name or access request ID. | [optional] 
**Dt** | **String** | The date that the certification or access request was completed. | [optional] 
**Type** | **String** | The type of governance event. | [optional] 
**GovernanceId** | **String** | The ID of the instance that caused the event - either the certification ID or access request ID. | [optional] 
**Owners** | [**CertifierResponse[]**](CertifierResponse.md) | The owners of the governance event (the certifiers or approvers) | [optional] 
**Reviewers** | [**CertifierResponse[]**](CertifierResponse.md) | The owners of the governance event (the certifiers or approvers), this field should be preferred over owners | [optional] 
**DecisionMaker** | [**CertifierResponse**](CertifierResponse.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CorrelatedGovernanceEvent = Initialize-BetaCorrelatedGovernanceEvent  -Name Manager Certification for Jon Snow `
 -Dt 2019-03-08T22:37:33.901Z `
 -Type certification `
 -GovernanceId 2c91808a77ff216301782327a50f09bf `
 -Owners [{id&#x3D;8a80828f643d484f01643e14202e206f, displayName&#x3D;John Snow}] `
 -Reviewers [{id&#x3D;8a80828f643d484f01643e14202e206f, displayName&#x3D;John Snow}] `
 -DecisionMaker null
```

- Convert the resource to JSON
```powershell
$CorrelatedGovernanceEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

