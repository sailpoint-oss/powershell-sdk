# EntitlementRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the Entitlement | [optional] 
**Type** | **String** | The type of the Entitlement, will always be ENTITLEMENT | [optional] 
**Name** | **String** | The display name of the Entitlement | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementRef = Initialize-PSSailpointEntitlementRef  -Id 2c91809773dee32014e13e122092014e `
 -Type ENTITLEMENT `
 -Name CN&#x3D;entitlement.490efde5,OU&#x3D;OrgCo,OU&#x3D;ServiceDept,DC&#x3D;HQAD,DC&#x3D;local
```

- Convert the resource to JSON
```powershell
$EntitlementRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

