# ReportConfigDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ColumnName** | **String** | Name of column in report | [optional] 
**Required** | **Boolean** | If true, column is required in all reports, and this entry is immutable. A 400 error will result from any attempt to modify the column&#39;s definition. | [optional] [default to $false]
**Included** | **Boolean** | If true, column is included in the report. A 400 error will be thrown if an attempt is made to set included&#x3D;false if required&#x3D;&#x3D;true. | [optional] [default to $false]
**Order** | **Int32** | Relative sort order for the column. Columns will be displayed left-to-right in nondecreasing order. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportConfigDTO = Initialize-BetaReportConfigDTO  -ColumnName SOD Business Name `
 -Required true `
 -Included false `
 -Order 2
```

- Convert the resource to JSON
```powershell
$ReportConfigDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

