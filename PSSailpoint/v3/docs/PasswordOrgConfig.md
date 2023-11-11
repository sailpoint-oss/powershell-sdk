# PasswordOrgConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomInstructionsEnabled** | **Boolean** | Indicator whether custom password instructions feature is enabled. The default value is false. | [optional] [default to $false]
**DigitTokenEnabled** | **Boolean** | Indicator whether &quot;&quot;digit token&quot;&quot; feature is enabled. The default value is false. | [optional] [default to $false]
**DigitTokenDurationMinutes** | **Int32** | The duration of &quot;&quot;digit token&quot;&quot; in minutes. The default value is 5. | [optional] [default to 5]
**DigitTokenLength** | **Int32** | The length of &quot;&quot;digit token&quot;&quot;. The default value is 6. | [optional] [default to 6]

## Examples

- Prepare the resource
```powershell
$PasswordOrgConfig = Initialize-PasswordOrgConfig  -CustomInstructionsEnabled true `
 -DigitTokenEnabled true `
 -DigitTokenDurationMinutes 10 `
 -DigitTokenLength 9
```

- Convert the resource to JSON
```powershell
$PasswordOrgConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

