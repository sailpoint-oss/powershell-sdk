# FormInstanceResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Created is the date the form instance was assigned | [optional] 
**CreatedBy** | [**FormInstanceCreatedBy**](FormInstanceCreatedBy.md) |  | [optional] 
**Expire** | **String** | Expire is the maximum amount of time that a form can be in progress. After this time is reached then the form will be moved to a CANCELED state automatically. The user will no longer be able to complete the submission. When a form instance is expires an audit log will be generated for that record | [optional] 
**FormConditions** | [**FormCondition[]**](FormCondition.md) | FormConditions is the conditional logic that modify the form dynamically modify the form as the recipient is interacting out the form | [optional] 
**FormData** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | FormData is the data provided by the form on submit. The data is in a key -&gt; value map | [optional] 
**FormDefinitionId** | **String** | FormDefinitionID is the id of the form definition that created this form | [optional] 
**FormElements** | [**FormElement[]**](FormElement.md) | FormElements is the configuration of the form, this would be a repeat of the fields from the form-config | [optional] 
**FormErrors** | [**FormError[]**](FormError.md) | FormErrors is an array of form validation errors from the last time the form instance was transitioned to the SUBMITTED state. If the form instance had validation errors then it would be moved to the IN PROGRESS state where the client can retrieve these errors | [optional] 
**FormInput** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | FormInput is an object of form input labels to value | [optional] 
**Id** | **String** | FormInstanceID is a unique guid identifying this form instance | [optional] 
**Modified** | **System.DateTime** | Modified is the last date the form instance was modified | [optional] 
**Recipients** | [**FormInstanceRecipient[]**](FormInstanceRecipient.md) | Recipients references to the recipient of a form. The recipients are those who are responsible for filling out a form and completing it | [optional] 
**StandAloneForm** | **Boolean** | StandAloneForm is a boolean flag to indicate if this form should be available for users to complete via the standalone form UI or should this only be available to be completed by as an embedded form | [optional] [default to $false]
**StandAloneFormUrl** | **String** | StandAloneFormURL is the URL where this form may be completed by the designated recipients using the standalone form UI | [optional] 
**State** | **String** | State the state of the form instance ASSIGNED FormInstanceStateAssigned IN_PROGRESS FormInstanceStateInProgress SUBMITTED FormInstanceStateSubmitted COMPLETED FormInstanceStateCompleted CANCELLED FormInstanceStateCancelled | [optional] 

## Examples

- Prepare the resource
```powershell
$FormInstanceResponse = Initialize-BetaFormInstanceResponse  -Created 2023-07-12T20:14:57.744860Z `
 -CreatedBy null `
 -Expire 2023-08-12T20:14:57.74486Z `
 -FormConditions null `
 -FormData {department&#x3D;Engineering} `
 -FormDefinitionId 00000000-0000-0000-0000-000000000000 `
 -FormElements null `
 -FormErrors null `
 -FormInput {input1&#x3D;Sales} `
 -Id 00000000-0000-0000-0000-000000000000 `
 -Modified 2023-07-12T20:14:57.744860Z `
 -Recipients null `
 -StandAloneForm false `
 -StandAloneFormUrl https://my-org.identitynow.com/ui/d/forms/00000000-0000-0000-0000-000000000000 `
 -State ASSIGNED
```

- Convert the resource to JSON
```powershell
$FormInstanceResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

