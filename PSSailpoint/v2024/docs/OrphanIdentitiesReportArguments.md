# OrphanIdentitiesReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SelectedFormats** | **String[]** | Output report file formats. These are formats for calling GET endpoint as query parameter &#39;fileFormat&#39;.  In case report won&#39;t have this argument there will be [&#39;CSV&#39;, &#39;PDF&#39;] as default. | [optional] 

## Examples

- Prepare the resource
```powershell
$OrphanIdentitiesReportArguments = Initialize-PSSailpoint.V2024OrphanIdentitiesReportArguments  -SelectedFormats [CSV]
```

- Convert the resource to JSON
```powershell
$OrphanIdentitiesReportArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

