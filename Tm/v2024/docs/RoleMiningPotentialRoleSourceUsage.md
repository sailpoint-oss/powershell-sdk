# RoleMiningPotentialRoleSourceUsage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The identity ID | [optional] 
**DisplayName** | **String** | Display name for the identity | [optional] 
**Email** | **String** | Email address for the identity | [optional] 
**UsageCount** | **Int32** | The number of days there has been usage of the source by the identity. | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleSourceUsage = Initialize-Tm.V2024RoleMiningPotentialRoleSourceUsage  -Id 2c918089762475180176267f894b54dc `
 -DisplayName Kirk Koepp `
 -Email kirk.koepp@testmail.identitynow.com `
 -UsageCount 25
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleSourceUsage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

