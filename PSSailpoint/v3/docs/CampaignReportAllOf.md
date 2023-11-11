# CampaignReportAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReportType** | [**ReportType**](ReportType.md) |  | [optional] 
**LastRunAt** | **System.DateTime** | The most recent date and time this report was run | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CampaignReportAllOf = Initialize-CampaignReportAllOf  -ReportType null `
 -LastRunAt null
```

- Convert the resource to JSON
```powershell
$CampaignReportAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

