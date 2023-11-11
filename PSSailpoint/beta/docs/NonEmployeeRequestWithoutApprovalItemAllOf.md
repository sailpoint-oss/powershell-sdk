# NonEmployeeRequestWithoutApprovalItemAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountName** | **String** | Requested identity account name. | [optional] 
**FirstName** | **String** | Non-Employee&#39;s first name. | [optional] 
**LastName** | **String** | Non-Employee&#39;s last name. | [optional] 
**Email** | **String** | Non-Employee&#39;s email. | [optional] 
**Phone** | **String** | Non-Employee&#39;s phone. | [optional] 
**Manager** | **String** | The account ID of a valid identity to serve as this non-employee&#39;s manager. | [optional] 
**NonEmployeeSource** | [**NonEmployeeSourceLiteWithSchemaAttributes**](NonEmployeeSourceLiteWithSchemaAttributes.md) |  | [optional] 
**VarData** | **System.Collections.Hashtable** | Attribute blob/bag for a non-employee. | [optional] 
**ApprovalStatus** | [**ApprovalStatus**](ApprovalStatus.md) |  | [optional] 
**Comment** | **String** | comment of requester | [optional] 
**CompletionDate** | **System.DateTime** | When the request was completely approved. | [optional] 
**StartDate** | **System.DateTime** | Non-Employee employment start date. | [optional] 
**EndDate** | **System.DateTime** | Non-Employee employment end date. | [optional] 
**Modified** | **System.DateTime** | When the request was last modified. | [optional] 
**Created** | **System.DateTime** | When the request was created. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeRequestWithoutApprovalItemAllOf = Initialize-BetaNonEmployeeRequestWithoutApprovalItemAllOf  -AccountName william.smith `
 -FirstName William `
 -LastName Smith `
 -Email william.smith@example.com `
 -Phone 5555555555 `
 -Manager jane.doe `
 -NonEmployeeSource null `
 -VarData null `
 -ApprovalStatus null `
 -Comment null `
 -CompletionDate 2020-03-24T11:11:41.139-05:00 `
 -StartDate Mon Mar 23 20:00:00 EDT 2020 `
 -EndDate Wed Mar 24 20:00:00 EDT 2021 `
 -Modified 2020-03-24T11:11:41.139-05:00 `
 -Created 2020-03-24T11:11:41.139-05:00
```

- Convert the resource to JSON
```powershell
$NonEmployeeRequestWithoutApprovalItemAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

