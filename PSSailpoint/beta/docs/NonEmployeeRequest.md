# NonEmployeeRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Non-Employee source id. | [optional] 
**SourceId** | **String** | Source Id associated with this non-employee source. | [optional] 
**Name** | **String** | Source name associated with this non-employee source. | [optional] 
**Description** | **String** | Source description associated with this non-employee source. | [optional] 
**AccountName** | **String** | Requested identity account name. | [optional] 
**FirstName** | **String** | Non-Employee&#39;s first name. | [optional] 
**LastName** | **String** | Non-Employee&#39;s last name. | [optional] 
**Email** | **String** | Non-Employee&#39;s email. | [optional] 
**Phone** | **String** | Non-Employee&#39;s phone. | [optional] 
**Manager** | **String** | The account ID of a valid identity to serve as this non-employee&#39;s manager. | [optional] 
**NonEmployeeSource** | [**NonEmployeeSourceLite**](NonEmployeeSourceLite.md) |  | [optional] 
**VarData** | **System.Collections.Hashtable** | Attribute blob/bag for a non-employee. | [optional] 
**ApprovalItems** | [**NonEmployeeApprovalItemBase[]**](NonEmployeeApprovalItemBase.md) | List of approval item for the request | [optional] 
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
$NonEmployeeRequest = Initialize-BetaNonEmployeeRequest  -Id a0303682-5e4a-44f7-bdc2-6ce6112549c1 `
 -SourceId 2c91808568c529c60168cca6f90c1313 `
 -Name Retail `
 -Description Source description `
 -AccountName william.smith `
 -FirstName William `
 -LastName Smith `
 -Email william.smith@example.com `
 -Phone 5555555555 `
 -Manager jane.doe `
 -NonEmployeeSource null `
 -VarData null `
 -ApprovalItems null `
 -ApprovalStatus null `
 -Comment null `
 -CompletionDate 2020-03-24T11:11:41.139-05:00 `
 -StartDate 2020-03-24T00:00-05:00 `
 -EndDate 2021-03-25T00:00-05:00 `
 -Modified 2020-03-24T11:11:41.139-05:00 `
 -Created 2020-03-24T11:11:41.139-05:00
```

- Convert the resource to JSON
```powershell
$NonEmployeeRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

