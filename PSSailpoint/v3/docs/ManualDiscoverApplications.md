# ManualDiscoverApplications
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | The CSV file to upload containing &#x60;application_name&#x60; and &#x60;description&#x60; columns. Each row represents an application to be discovered. | 

## Examples

- Prepare the resource
```powershell
$ManualDiscoverApplications = Initialize-PSSailpoint.V3ManualDiscoverApplications  -File application_name,description
&quot;Sample App&quot;,&quot;This is a sample description for Sample App.&quot;
&quot;Another App&quot;,&quot;Description for Another App.&quot;
```

- Convert the resource to JSON
```powershell
$ManualDiscoverApplications | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

