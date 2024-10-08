# IdentitiesReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CorrelatedOnly** | **Boolean** | Flag to specify if only correlated identities are included in report. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$IdentitiesReportArguments = Initialize-PSSailpoint.V2024IdentitiesReportArguments  -CorrelatedOnly true
```

- Convert the resource to JSON
```powershell
$IdentitiesReportArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

