# AccountsExportReportArguments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | **String** | Id of the authoritative source to export related accounts e.g. identities | 
**SourceName** | **String** | Name of the authoritative source for accounts export | 
**DefaultS3Bucket** | **Boolean** | Use it to set default s3 bucket where generated report will be saved.  In case this argument is false and &#39;s3Bucket&#39; argument is null or absent there will be default s3Bucket assigned to the report. | 
**S3Bucket** | **String** | If you want to be specific you could use this argument with defaultS3Bucket &#x3D; false. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountsExportReportArguments = Initialize-AccountsExportReportArguments  -Application 2c9180897eSourceIde781782f705b9 `
 -SourceName DataScienceSourceName `
 -DefaultS3Bucket true `
 -S3Bucket the-dev-bucket
```

- Convert the resource to JSON
```powershell
$AccountsExportReportArguments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

