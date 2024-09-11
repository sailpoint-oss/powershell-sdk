# NonEmployeeRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountName** | **String** | Requested identity account name. | 
**FirstName** | **String** | Non-Employee&#39;s first name. | 
**LastName** | **String** | Non-Employee&#39;s last name. | 
**Email** | **String** | Non-Employee&#39;s email. | 
**Phone** | **String** | Non-Employee&#39;s phone. | 
**Manager** | **String** | The account ID of a valid identity to serve as this non-employee&#39;s manager. | 
**SourceId** | **String** | Non-Employee&#39;s source id. | 
**VarData** | **System.Collections.Hashtable** | Attribute blob/bag for a non-employee, 10 attributes is the maximum size supported. | [optional] 
**StartDate** | **System.DateTime** | Non-Employee employment start date. | 
**EndDate** | **System.DateTime** | Non-Employee employment end date. | 

## Examples

- Prepare the resource
```powershell
$NonEmployeeRequestBody = Initialize-Tm.BetaNonEmployeeRequestBody  -AccountName william.smith `
 -FirstName William `
 -LastName Smith `
 -Email william.smith@example.com `
 -Phone 5555555555 `
 -Manager jane.doe `
 -SourceId 2c91808568c529c60168cca6f90c1313 `
 -VarData null `
 -StartDate 2020-03-24T00:00-05:00 `
 -EndDate 2021-03-25T00:00-05:00
```

- Convert the resource to JSON
```powershell
$NonEmployeeRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

