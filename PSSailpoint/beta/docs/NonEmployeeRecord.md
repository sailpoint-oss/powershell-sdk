# NonEmployeeRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Non-Employee record id. | [optional] 
**AccountName** | **String** | Requested identity account name. | [optional] 
**FirstName** | **String** | Non-Employee&#39;s first name. | [optional] 
**LastName** | **String** | Non-Employee&#39;s last name. | [optional] 
**Email** | **String** | Non-Employee&#39;s email. | [optional] 
**Phone** | **String** | Non-Employee&#39;s phone. | [optional] 
**Manager** | **String** | The account ID of a valid identity to serve as this non-employee&#39;s manager. | [optional] 
**SourceId** | **String** | Non-Employee&#39;s source id. | [optional] 
**VarData** | **System.Collections.Hashtable** | Attribute blob/bag for a non-employee. | [optional] 
**StartDate** | **System.DateTime** | Non-Employee employment start date. | [optional] 
**EndDate** | **System.DateTime** | Non-Employee employment end date. | [optional] 
**Modified** | **System.DateTime** | When the request was last modified. | [optional] 
**Created** | **System.DateTime** | When the request was created. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeRecord = Initialize-BetaNonEmployeeRecord  -Id null `
 -AccountName null `
 -FirstName William `
 -LastName Smith `
 -Email william.smith@example.com `
 -Phone 5555555555 `
 -Manager jane.doe `
 -SourceId 2c91808568c529c60168cca6f90c1313 `
 -VarData null `
 -StartDate 2019-08-23T18:52:59.162Z `
 -EndDate 2020-08-23T18:52:59.162Z `
 -Modified 2019-08-23T18:52:59.162Z `
 -Created 2019-08-23T18:40:35.772Z
```

- Convert the resource to JSON
```powershell
$NonEmployeeRecord | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

