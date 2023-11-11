# IdentityWithNewAccess
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** | Identity id to be checked. | 
**AccessRefs** | [**IdentityWithNewAccessAccessRefsInner[]**](IdentityWithNewAccessAccessRefsInner.md) | The list of entitlements to consider for possible violations in a preventive check. | 

## Examples

- Prepare the resource
```powershell
$IdentityWithNewAccess = Initialize-IdentityWithNewAccess  -IdentityId 2c91808568c529c60168cca6f90c1313 `
 -AccessRefs [{type&#x3D;ENTITLEMENT, id&#x3D;2c918087682f9a86016839c050861ab1, name&#x3D;CN&#x3D;Information Access,OU&#x3D;test,OU&#x3D;test-service,DC&#x3D;TestAD,DC&#x3D;local}, {type&#x3D;ENTITLEMENT, id&#x3D;2c918087682f9a86016839c0509c1ab2, name&#x3D;CN&#x3D;Information Technology,OU&#x3D;test,OU&#x3D;test-service,DC&#x3D;TestAD,DC&#x3D;local}]
```

- Convert the resource to JSON
```powershell
$IdentityWithNewAccess | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

