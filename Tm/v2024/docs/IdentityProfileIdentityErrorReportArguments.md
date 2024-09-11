# IdentityProfileIdentityErrorReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthoritativeSource** | **String** | Source Id to be checked on errors of identity profiles aggregation | 

## Examples

- Prepare the resource
```powershell
$IdentityProfileIdentityErrorReportArguments = Initialize-Tm.V2024IdentityProfileIdentityErrorReportArguments  -AuthoritativeSource 1234sourceId5678902
```

- Convert the resource to JSON
```powershell
$IdentityProfileIdentityErrorReportArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

