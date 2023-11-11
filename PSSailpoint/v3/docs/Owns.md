# Owns
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sources** | [**Reference1[]**](Reference1.md) |  | [optional] 
**Entitlements** | [**Reference1[]**](Reference1.md) |  | [optional] 
**AccessProfiles** | [**Reference1[]**](Reference1.md) |  | [optional] 
**Roles** | [**Reference1[]**](Reference1.md) |  | [optional] 
**Apps** | [**Reference1[]**](Reference1.md) |  | [optional] 
**GovernanceGroups** | [**Reference1[]**](Reference1.md) |  | [optional] 
**FallbackApprover** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Owns = Initialize-Owns  -Sources null `
 -Entitlements null `
 -AccessProfiles null `
 -Roles null `
 -Apps null `
 -GovernanceGroups null `
 -FallbackApprover false
```

- Convert the resource to JSON
```powershell
$Owns | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

