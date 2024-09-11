# IdentitySummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of this identity summary | [optional] 
**Name** | **String** | Human-readable display name of identity | [optional] 
**IdentityId** | **String** | ID of the identity that this summary represents | [optional] 
**Completed** | **Boolean** | Indicates if all access items for this summary have been decided on | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$IdentitySummary = Initialize-Tm.BetaIdentitySummary  -Id ff80818155fe8c080155fe8d925b0316 `
 -Name SailPoint Services `
 -IdentityId c15b9f5cca5a4e9599eaa0e64fa921bd `
 -Completed true
```

- Convert the resource to JSON
```powershell
$IdentitySummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

