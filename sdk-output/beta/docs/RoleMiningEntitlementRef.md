# RoleMiningEntitlementRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the entitlement | [optional] 
**Name** | **String** | Name of the entitlement | [optional] 
**Description** | **String** | Description forthe entitlement | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningEntitlementRef = Initialize-PSSailpointBetaRoleMiningEntitlementRef  -Id null `
 -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$RoleMiningEntitlementRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

