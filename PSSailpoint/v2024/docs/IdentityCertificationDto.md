# IdentityCertificationDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | id of the certification | [optional] 
**Name** | **String** | name of the certification | [optional] 
**Campaign** | [**CampaignReference**](CampaignReference.md) |  | [optional] 
**Completed** | **Boolean** | Have all decisions been made? | [optional] 
**IdentitiesCompleted** | **Int32** | The number of identities for whom all decisions have been made and are complete. | [optional] 
**IdentitiesTotal** | **Int32** | The total number of identities in the Certification, both complete and incomplete. | [optional] 
**Created** | **System.DateTime** | created date | [optional] 
**Modified** | **System.DateTime** | modified date | [optional] 
**DecisionsMade** | **Int32** | The number of approve/revoke/acknowledge decisions that have been made. | [optional] 
**DecisionsTotal** | **Int32** | The total number of approve/revoke/acknowledge decisions. | [optional] 
**Due** | **System.DateTime** | The due date of the certification. | [optional] 
**Signed** | **System.DateTime** | The date the reviewer signed off on the Certification. | [optional] 
**Reviewer** | [**Reviewer**](Reviewer.md) |  | [optional] 
**Reassignment** | [**Reassignment**](Reassignment.md) |  | [optional] 
**HasErrors** | **Boolean** | Identifies if the certification has an error | [optional] 
**ErrorMessage** | **String** | Description of the certification error | [optional] 
**Phase** | [**CertificationPhase**](CertificationPhase.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityCertificationDto = Initialize-PSSailpoint.V2024IdentityCertificationDto  -Id 2c9180835d2e5168015d32f890ca1581 `
 -Name Source Owner Access Review for Employees [source] `
 -Campaign null `
 -Completed true `
 -IdentitiesCompleted 5 `
 -IdentitiesTotal 10 `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -DecisionsMade 20 `
 -DecisionsTotal 40 `
 -Due 2018-10-19T13:49:37.385Z `
 -Signed 2018-10-19T13:49:37.385Z `
 -Reviewer null `
 -Reassignment null `
 -HasErrors false `
 -ErrorMessage The certification has an error `
 -Phase null
```

- Convert the resource to JSON
```powershell
$IdentityCertificationDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

