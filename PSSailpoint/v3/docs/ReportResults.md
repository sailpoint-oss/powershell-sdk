# ReportResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReportType** | **String** | Use this property to define what report should be processed in the RDE service. | [optional] 
**TaskDefName** | **String** | Name of the task definition which is started to process requesting report. Usually the same as report name | [optional] 
**Id** | **String** | Unique task definition identifier. | [optional] 
**Created** | **System.DateTime** | Report processing start date | [optional] 
**Status** | **String** | Report current state or result status. | [optional] 
**Duration** | **Int64** | Report processing time in ms. | [optional] 
**Rows** | **Int64** | Report size in rows. | [optional] 
**AvailableFormats** | **String[]** | Output report file formats. This are formats for calling get endpoint as a query parameter &#39;fileFormat&#39;.  In case report won&#39;t have this argument there will be [&#39;CSV&#39;, &#39;PDF&#39;] as default. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportResults = Initialize-ReportResults  -ReportType IDENTITIES_DETAILS `
 -TaskDefName Identities Details Report `
 -Id a248c16fe22222b2bd49615481311111 `
 -Created null `
 -Status SUCCESS `
 -Duration 342 `
 -Rows 37 `
 -AvailableFormats [CSV]
```

- Convert the resource to JSON
```powershell
$ReportResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

