# SearchExportReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Indices** | [**Index[]**](Index.md) | The names of the Elasticsearch indices in which to search. If none are provided, then all indices will be searched. | [optional] 
**Filters** | [**System.Collections.Hashtable**](ModelFilter.md) | The filters to be applied for each filtered field name. | [optional] 
**Query** | [**Query**](Query.md) |  | 
**IncludeNested** | **Boolean** | Indicates whether nested objects from returned search results should be included. | [optional] [default to $true]
**Sort** | **String[]** | The fields to be used to sort the search results. Use + or - to specify the sort direction. | [optional] 
**DefaultS3Bucket** | **Boolean** | Use it to set default s3 bucket where generated report will be saved.  In case this argument is false and &#39;s3Bucket&#39; argument is null or absent there will be default s3Bucket assigned to the report. | 
**S3Bucket** | **String** | If you want to be specific you could use this argument with defaultS3Bucket &#x3D; false. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchExportReportArguments = Initialize-SearchExportReportArguments  -Indices [entitlements] `
 -Filters {source.id&#x3D;{type&#x3D;TERMS, terms&#x3D;[2c9180897termsId780bd2920576]}, source.name.exact&#x3D;{type&#x3D;TERMS, terms&#x3D;[IdentityNow], exclude&#x3D;true}} `
 -Query null `
 -IncludeNested true `
 -Sort [displayName, +id] `
 -DefaultS3Bucket true `
 -S3Bucket the-dev-bucket
```

- Convert the resource to JSON
```powershell
$SearchExportReportArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

