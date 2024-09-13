# ViolationOwnerAssignmentConfigOwnerRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Owner type. | [optional] 
**Id** | **String** | Owner&#39;s ID. | [optional] 
**Name** | **String** | Owner&#39;s name. | [optional] 

## Examples

- Prepare the resource
```powershell
$ViolationOwnerAssignmentConfigOwnerRef = Initialize-PSSailpoint.BetaViolationOwnerAssignmentConfigOwnerRef  -Type IDENTITY `
 -Id 2c9180a46faadee4016fb4e018c20639 `
 -Name Support
```

- Convert the resource to JSON
```powershell
$ViolationOwnerAssignmentConfigOwnerRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

