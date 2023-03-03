# PasswordOrgConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomInstructionsEnabled** | **Boolean** | Indicator whether custom password instructions feature is enabled. The default value is false. | [optional] 
**DigitTokenEnabled** | **Boolean** | Indicator whether &quot;&quot;digit token&quot;&quot; feature is enabled. The default value is false. | [optional] 
**DigitTokenDurationMinutes** | **Int32** | The duration of &quot;&quot;digit token&quot;&quot; in minutes. The default value is 5. | [optional] 
**DigitTokenLength** | **Int32** | The length of &quot;&quot;digit token&quot;&quot;. The default value is 6. | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordOrgConfig = Initialize-PSSailpointBetaPasswordOrgConfig  -CustomInstructionsEnabled null `
 -DigitTokenEnabled true `
 -DigitTokenDurationMinutes 10 `
 -DigitTokenLength 9
```

- Convert the resource to JSON
```powershell
$PasswordOrgConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

