# AuditDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Initial date and time when the record was created | [optional] 
**CreatedBy** | [**Identity1**](Identity1.md) |  | [optional] 
**Modified** | **System.DateTime** | Last modified date and time for the record | [optional] 
**ModifiedBy** | [**Identity1**](Identity1.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditDetails = Initialize-BetaAuditDetails  -Created 2022-07-21T11:13:12.345Z `
 -CreatedBy null `
 -Modified 2022-07-21T11:13:12.345Z `
 -ModifiedBy null
```

- Convert the resource to JSON
```powershell
$AuditDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

