# EntitlementRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Entitlement&#39;s DTO type. | [optional] 
**Id** | **String** | Entitlement&#39;s ID. | [optional] 
**Name** | **String** | Entitlement&#39;s display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementRef = Initialize-BetaEntitlementRef  -Type ENTITLEMENT `
 -Id 2c91809773dee32014e13e122092014e `
 -Name CN&#x3D;entitlement.490efde5,OU&#x3D;OrgCo,OU&#x3D;ServiceDept,DC&#x3D;HQAD,DC&#x3D;local
```

- Convert the resource to JSON
```powershell
$EntitlementRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

