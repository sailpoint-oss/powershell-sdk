# DependantAppConnectionsAccountSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UseForPasswordManagement** | **Boolean** | Use this Account Source for password management | [optional] [default to $false]
**PasswordPolicies** | [**DependantAppConnectionsAccountSourcePasswordPoliciesInner[]**](DependantAppConnectionsAccountSourcePasswordPoliciesInner.md) | A list of Password Policies for this Account Source | [optional] 

## Examples

- Prepare the resource
```powershell
$DependantAppConnectionsAccountSource = Initialize-PSSailpoint.V3DependantAppConnectionsAccountSource  -UseForPasswordManagement false `
 -PasswordPolicies null
```

- Convert the resource to JSON
```powershell
$DependantAppConnectionsAccountSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

