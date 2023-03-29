# OwnerReferenceDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The owner id for the entitlement | [optional] 
**Name** | **String** | The owner name for the entitlement | [optional] 
**Type** | **String** | The type of the owner | [optional] 

## Examples

- Prepare the resource
```powershell
$OwnerReferenceDto = Initialize-PSSailpointBetaOwnerReferenceDto  -Id 2a2fdacc-a5e3-45f1-8bf7-970cfbb8fec2 `
 -Name governance group 1 `
 -Type GOVERNANCE_GROUP
```

- Convert the resource to JSON
```powershell
$OwnerReferenceDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

