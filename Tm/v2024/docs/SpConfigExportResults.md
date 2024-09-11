# SpConfigExportResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Version** | **Int32** | Current version of the export results object. | [optional] 
**Timestamp** | **System.DateTime** | Time the export was completed. | [optional] 
**Tenant** | **String** | Name of the tenant where this export originated. | [optional] 
**Description** | **String** | Optional user defined description/name for export job. | [optional] 
**Options** | [**ExportOptions**](ExportOptions.md) |  | [optional] 
**Objects** | [**ConfigObject[]**](ConfigObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SpConfigExportResults = Initialize-Tm.V2024SpConfigExportResults  -Version 1 `
 -Timestamp 2021-05-11T22:23:16Z `
 -Tenant sample-tenant `
 -Description Export Job 1 Test `
 -Options null `
 -Objects null
```

- Convert the resource to JSON
```powershell
$SpConfigExportResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

