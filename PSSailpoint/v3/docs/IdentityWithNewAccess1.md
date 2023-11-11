# IdentityWithNewAccess1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** | Set of identity IDs to be checked. | 
**AccessRefs** | [**IdentityWithNewAccess1AccessRefsInner[]**](IdentityWithNewAccess1AccessRefsInner.md) | The bundle of access profiles to be added to the identities specified. All references must be ENTITLEMENT type. | 
**ClientMetadata** | **System.Collections.Hashtable** | Arbitrary key-value pairs. They will never be processed by the IdentityNow system but will be returned on completion of the violation check. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityWithNewAccess1 = Initialize-IdentityWithNewAccess1  -IdentityId 2c91809050db617d0150e0bf3215385e `
 -AccessRefs null `
 -ClientMetadata {clientName&#x3D;client1, clientId&#x3D;2c91808f7892918f0178b78da4a305a1}
```

- Convert the resource to JSON
```powershell
$IdentityWithNewAccess1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

