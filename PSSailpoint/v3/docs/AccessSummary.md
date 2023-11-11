# AccessSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | [**AccessSummaryAccess**](AccessSummaryAccess.md) |  | [optional] 
**Entitlement** | [**ReviewableEntitlement**](ReviewableEntitlement.md) |  | [optional] 
**AccessProfile** | [**ReviewableAccessProfile**](ReviewableAccessProfile.md) |  | [optional] 
**Role** | [**ReviewableRole**](ReviewableRole.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessSummary = Initialize-AccessSummary  -Access null `
 -Entitlement null `
 -AccessProfile null `
 -Role null
```

- Convert the resource to JSON
```powershell
$AccessSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

