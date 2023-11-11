# EntitlementRequestConfig1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowEntitlementRequest** | **Boolean** | Flag for allowing entitlement request. | [optional] 
**RequestCommentsRequired** | **Boolean** | Flag for requiring comments while submitting an entitlement request. | [optional] [default to $false]
**DeniedCommentsRequired** | **Boolean** | Flag for requiring comments while rejecting an entitlement request. | [optional] [default to $false]
**GrantRequestApprovalSchemes** | **String** | Approval schemes for granting entitlement request. This can be empty if no approval is needed. Multiple schemes must be comma-separated. The valid schemes are &quot;&quot;entitlementOwner&quot;&quot;, &quot;&quot;sourceOwner&quot;&quot;, &quot;&quot;manager&quot;&quot; and &quot;&quot;workgroup:{id}&quot;&quot;. Multiple workgroups (governance groups) can be used.  | [optional] [default to "sourceOwner"]

## Examples

- Prepare the resource
```powershell
$EntitlementRequestConfig1 = Initialize-BetaEntitlementRequestConfig1  -AllowEntitlementRequest true `
 -RequestCommentsRequired false `
 -DeniedCommentsRequired false `
 -GrantRequestApprovalSchemes entitlementOwner, sourceOwner, manager, workgroup:2c918084660f45d6016617daa9210584
```

- Convert the resource to JSON
```powershell
$EntitlementRequestConfig1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

