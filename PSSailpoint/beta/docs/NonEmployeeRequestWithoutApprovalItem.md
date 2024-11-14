# NonEmployeeRequestWithoutApprovalItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Non-Employee request id. | [optional] 
**Requester** | [**IdentityReferenceWithId**](IdentityReferenceWithId.md) |  | [optional] 
**AccountName** | **String** | Requested identity account name. | [optional] 
**FirstName** | **String** | Non-Employee&#39;s first name. | [optional] 
**LastName** | **String** | Non-Employee&#39;s last name. | [optional] 
**Email** | **String** | Non-Employee&#39;s email. | [optional] 
**Phone** | **String** | Non-Employee&#39;s phone. | [optional] 
**Manager** | **String** | The account ID of a valid identity to serve as this non-employee&#39;s manager. | [optional] 
**NonEmployeeSource** | [**NonEmployeeSourceLiteWithSchemaAttributes**](NonEmployeeSourceLiteWithSchemaAttributes.md) |  | [optional] 
**VarData** | **System.Collections.Hashtable** | Additional attributes for a non-employee. Up to 10 custom attributes can be added. | [optional] 
**ApprovalStatus** | [**ApprovalStatus**](ApprovalStatus.md) |  | [optional] 
**Comment** | **String** | Comment of requester | [optional] 
**CompletionDate** | **System.DateTime** | When the request was completely approved. | [optional] 
**StartDate** | **System.DateTime** | Non-Employee employment start date. | [optional] 
**EndDate** | **System.DateTime** | Non-Employee employment end date. | [optional] 
**Modified** | **System.DateTime** | When the request was last modified. | [optional] 
**Created** | **System.DateTime** | When the request was created. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeRequestWithoutApprovalItem = Initialize-PSSailpoint.BetaNonEmployeeRequestWithoutApprovalItem  -Id ac10e21c-931c-1ef2-8193-1c51e7ff0003 `
 -Requester null `
 -AccountName william.smith `
 -FirstName William `
 -LastName Smith `
 -Email william.smith@example.com `
 -Phone 5125555555 `
 -Manager jane.doe `
 -NonEmployeeSource null `
 -VarData {description&#x3D;Auditing} `
 -ApprovalStatus null `
 -Comment approved `
 -CompletionDate 2020-03-24T11:11:41.139-05:00 `
 -StartDate Tue Mar 24 00:00:00 UTC 2020 `
 -EndDate Thu Mar 25 00:00:00 UTC 2021 `
 -Modified 2020-03-24T11:11:41.139-05:00 `
 -Created 2020-03-24T11:11:41.139-05:00
```

- Convert the resource to JSON
```powershell
$NonEmployeeRequestWithoutApprovalItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

