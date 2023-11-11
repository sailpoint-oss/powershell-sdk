# RoleMembershipSelector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**RoleMembershipSelectorType**](RoleMembershipSelectorType.md) |  | [optional] 
**Criteria** | [**RoleCriteriaLevel1**](RoleCriteriaLevel1.md) |  | [optional] 
**Identities** | [**RoleMembershipIdentity[]**](RoleMembershipIdentity.md) | Defines role membership as being exclusive to the specified Identities, when type is IDENTITY_LIST. | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMembershipSelector = Initialize-BetaRoleMembershipSelector  -Type null `
 -Criteria null `
 -Identities null
```

- Convert the resource to JSON
```powershell
$RoleMembershipSelector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

