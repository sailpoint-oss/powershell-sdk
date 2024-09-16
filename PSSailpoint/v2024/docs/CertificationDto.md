# CertificationDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CampaignRef** | [**CampaignReference**](CampaignReference.md) |  | 
**Phase** | [**CertificationPhase**](CertificationPhase.md) |  | 
**Due** | **System.DateTime** | The due date of the certification. | 
**Signed** | **System.DateTime** | The date the reviewer signed off on the certification. | 
**Reviewer** | [**Reviewer1**](Reviewer1.md) |  | 
**Reassignment** | [**Reassignment1**](Reassignment1.md) |  | [optional] 
**HasErrors** | **Boolean** | Indicates it the certification has any errors. | 
**ErrorMessage** | **String** | A message indicating what the error is. | [optional] 
**Completed** | **Boolean** | Indicates if all certification decisions have been made. | 
**DecisionsMade** | **Int32** | The number of approve/revoke/acknowledge decisions that have been made by the reviewer. | 
**DecisionsTotal** | **Int32** | The total number of approve/revoke/acknowledge decisions for the certification. | 
**EntitiesCompleted** | **Int32** | The number of entities (identities, access profiles, roles, etc.) for which all decisions have been made and are complete. | 
**EntitiesTotal** | **Int32** | The total number of entities (identities, access profiles, roles, etc.) in the certification, both complete and incomplete. | 

## Examples

- Prepare the resource
```powershell
$CertificationDto = Initialize-PSSailpoint.V2024CertificationDto  -CampaignRef null `
 -Phase null `
 -Due 2018-10-19T13:49:37.385Z `
 -Signed 2018-10-19T13:49:37.385Z `
 -Reviewer null `
 -Reassignment null `
 -HasErrors false `
 -ErrorMessage The certification has an error `
 -Completed false `
 -DecisionsMade 20 `
 -DecisionsTotal 40 `
 -EntitiesCompleted 5 `
 -EntitiesTotal 10
```

- Convert the resource to JSON
```powershell
$CertificationDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

