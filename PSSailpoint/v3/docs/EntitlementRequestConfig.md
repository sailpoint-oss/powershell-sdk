# EntitlementRequestConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowEntitlementRequest** | **Boolean** | If this is true, entitlement requests are allowed. | [optional] [default to $false]
**RequestCommentsRequired** | **Boolean** | If this is true, comments are required to submit entitlement requests. | [optional] [default to $false]
**DeniedCommentsRequired** | **Boolean** | If this is true, comments are required to reject entitlement requests. | [optional] [default to $false]
**GrantRequestApprovalSchemes** | **String** | Approval schemes for granting entitlement request. This can be empty if no approval is needed. Multiple schemes must be comma-separated. The valid schemes are &quot;&quot;entitlementOwner&quot;&quot;, &quot;&quot;sourceOwner&quot;&quot;, &quot;&quot;manager&quot;&quot; and &quot;&quot;workgroup:{id}&quot;&quot;. You can use multiple governance groups (workgroups).  | [optional] [default to "sourceOwner"]

## Examples

- Prepare the resource
```powershell
$EntitlementRequestConfig = Initialize-PSSailpoint.V3EntitlementRequestConfig  -AllowEntitlementRequest true `
 -RequestCommentsRequired false `
 -DeniedCommentsRequired false `
 -GrantRequestApprovalSchemes entitlementOwner, sourceOwner, manager, workgroup:2c918084660f45d6016617daa9210584
```

- Convert the resource to JSON
```powershell
$EntitlementRequestConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

