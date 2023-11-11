# NonEmployeeSourceAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approvers** | [**NonEmployeeIdentityReferenceWithId[]**](NonEmployeeIdentityReferenceWithId.md) | List of approvers | [optional] 
**AccountManagers** | [**NonEmployeeIdentityReferenceWithId[]**](NonEmployeeIdentityReferenceWithId.md) | List of account managers | [optional] 
**Modified** | **System.DateTime** | When the request was last modified. | [optional] 
**Created** | **System.DateTime** | When the request was created. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeSourceAllOf = Initialize-NonEmployeeSourceAllOf  -Approvers null `
 -AccountManagers null `
 -Modified 2019-08-23T18:52:59.162Z `
 -Created 2019-08-23T18:40:35.772Z
```

- Convert the resource to JSON
```powershell
$NonEmployeeSourceAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

