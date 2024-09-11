# AccountsExportReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | **String** | Id of the authoritative source to export related accounts e.g. identities | 
**SourceName** | **String** | Name of the authoritative source for accounts export | 

## Examples

- Prepare the resource
```powershell
$AccountsExportReportArguments = Initialize-Tm.V2024AccountsExportReportArguments  -Application 2c9180897eSourceIde781782f705b9 `
 -SourceName DataScienceSourceName
```

- Convert the resource to JSON
```powershell
$AccountsExportReportArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

