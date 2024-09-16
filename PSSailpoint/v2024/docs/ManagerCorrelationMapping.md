# ManagerCorrelationMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountAttributeName** | **String** | Name of the attribute to use for manager correlation. The value found on the account attribute will be used to lookup the manager&#39;s identity. | [optional] 
**IdentityAttributeName** | **String** | Name of the identity attribute to search when trying to find a manager using the value from the accountAttribute. | [optional] 

## Examples

- Prepare the resource
```powershell
$ManagerCorrelationMapping = Initialize-PSSailpoint.V2024ManagerCorrelationMapping  -AccountAttributeName manager `
 -IdentityAttributeName manager
```

- Convert the resource to JSON
```powershell
$ManagerCorrelationMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

