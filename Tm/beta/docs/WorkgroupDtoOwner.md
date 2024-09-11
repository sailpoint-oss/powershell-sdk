# WorkgroupDtoOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Owner&#39;s DTO type. | [optional] 
**Id** | **String** | Owner&#39;s identity ID. | [optional] 
**Name** | **String** | Owner&#39;s name. | [optional] 
**DisplayName** | **String** | The display name of the identity | [optional] [readonly] 
**EmailAddress** | **String** | The primary email address of the identity | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$WorkgroupDtoOwner = Initialize-Tm.BetaWorkgroupDtoOwner  -Type IDENTITY `
 -Id 2c9180a46faadee4016fb4e018c20639 `
 -Name Support `
 -DisplayName Support `
 -EmailAddress support@sailpoint.com
```

- Convert the resource to JSON
```powershell
$WorkgroupDtoOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

