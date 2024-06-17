# IdentitiesDetailsReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CorrelatedOnly** | **Boolean** | Boolean FLAG to specify if only correlated identities should be used in report processing | [default to $false]

## Examples

- Prepare the resource
```powershell
$IdentitiesDetailsReportArguments = Initialize-PSSailpointIdentitiesDetailsReportArguments  -CorrelatedOnly true
```

- Convert the resource to JSON
```powershell
$IdentitiesDetailsReportArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

