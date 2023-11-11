# ViolationOwnerAssignmentConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssignmentRule** | **String** | Details about the violations owner. MANAGER - identity&#39;s manager STATIC - Governance Group or Identity | [optional] 
**OwnerRef** | [**ViolationOwnerAssignmentConfigOwnerRef**](ViolationOwnerAssignmentConfigOwnerRef.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ViolationOwnerAssignmentConfig = Initialize-ViolationOwnerAssignmentConfig  -AssignmentRule MANAGER `
 -OwnerRef null
```

- Convert the resource to JSON
```powershell
$ViolationOwnerAssignmentConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

