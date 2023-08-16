# CampaignReport
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DtoType**](DtoType.md) |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 
**Status** | **String** | Status of a violation report | [optional] 
**ReportType** | [**ReportType**](ReportType.md) |  | 
**LastRunAt** | **System.DateTime** | The most recent date and time this report was run | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CampaignReport = Initialize-PSSailpointCampaignReport  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson `
 -Status PENDING `
 -ReportType null `
 -LastRunAt null
```

- Convert the resource to JSON
```powershell
$CampaignReport | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

