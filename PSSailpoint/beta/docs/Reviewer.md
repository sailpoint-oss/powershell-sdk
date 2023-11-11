# Reviewer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The reviewer&#39;s DTO type. | 
**Id** | **String** | The reviewer&#39;s ID. | 
**Name** | **String** | The reviewer&#39;s display name. | 
**Email** | **String** | The reviewing identity&#39;s email. Only applicable to &#x60;IDENTITY&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$Reviewer = Initialize-BetaReviewer  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20642 `
 -Name Michael Michaels `
 -Email reviewer@test.com
```

- Convert the resource to JSON
```powershell
$Reviewer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

