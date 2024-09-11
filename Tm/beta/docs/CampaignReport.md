# CampaignReport
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | SOD policy violation report result DTO type. | [optional] 
**Id** | **String** | SOD policy violation report result ID. | [optional] 
**Name** | **String** | Human-readable name of the SOD policy violation report result. | [optional] 
**Status** | **String** | Status of a SOD policy violation report. | [optional] 
**ReportType** | [**ReportType**](ReportType.md) |  | 
**LastRunAt** | **System.DateTime** | The most recent date and time this report was run | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CampaignReport = Initialize-Tm.BetaCampaignReport  -Type REPORT_RESULT `
 -Id 2c9180835d191a86015d28455b4b232a `
 -Name SOD Policy 1 Violation `
 -Status PENDING `
 -ReportType null `
 -LastRunAt null
```

- Convert the resource to JSON
```powershell
$CampaignReport | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

