# AccountsExportReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | **String** | Source ID. | 
**SourceName** | **String** | Source name. | 

## Examples

- Prepare the resource
```powershell
$AccountsExportReportArguments = Initialize-PSSailpoint.V3AccountsExportReportArguments  -Application 2c9180897eSourceIde781782f705b9 `
 -SourceName Active Directory
```

- Convert the resource to JSON
```powershell
$AccountsExportReportArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

