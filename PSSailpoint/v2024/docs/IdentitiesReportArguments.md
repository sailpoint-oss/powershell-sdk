# IdentitiesReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CorrelatedOnly** | **Boolean** | Boolean FLAG to specify if only correlated identities should be used in report processing | [optional] [default to $false]

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

