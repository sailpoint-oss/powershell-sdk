# UpdateOrgSettingsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CountryCodes** | **String[]** |  | [optional] 
**EnableExternalPasswordChange** | **Boolean** |  | [optional] 
**EnableAutomaticPasswordReplay** | **Boolean** |  | [optional] 
**EnableAutomationGeneration** | **Boolean** |  | [optional] 
**KbaReqAnswers** | **Int32** |  | [optional] 
**KbaReqForAuthn** | **Int32** |  | [optional] 
**LockoutAttemptThreshold** | **Int32** |  | [optional] 
**LockoutTimeMinutes** | **Int32** |  | [optional] 
**LoginUrl** | **String** |  | [optional] 
**Netmasks** | **String[]** |  | [optional] 
**NotifyAuthenticationSettingChange** | **Boolean** |  | [optional] 
**PasswordReplayState** | **String** |  | [optional] 
**PreferredIdentityInviteTemplate** | **String** |  | [optional] 
**RedirectPatterns** | **String[]** |  | [optional] 
**SsoPartnerSource** | **String** |  | [optional] 
**SystemNotificationEmails** | **String[]** |  | [optional] 
**TrackAnalytics** | **Boolean** |  | [optional] 
**UsageCertRequired** | **Boolean** |  | [optional] 
**UsageCertText** | **String** |  | [optional] 
**UsernameEmptyText** | **String** |  | [optional] 
**UsernameLabel** | **String** |  | [optional] 
**WhiteList** | **Boolean** |  | [optional] 
**ApprovalConfig** | [**GetOrgSettings200ResponseApprovalConfig**](GetOrgSettings200ResponseApprovalConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateOrgSettingsRequest = Initialize-V2UpdateOrgSettingsRequest  -CountryCodes null `
 -EnableExternalPasswordChange null `
 -EnableAutomaticPasswordReplay null `
 -EnableAutomationGeneration null `
 -KbaReqAnswers null `
 -KbaReqForAuthn null `
 -LockoutAttemptThreshold null `
 -LockoutTimeMinutes null `
 -LoginUrl null `
 -Netmasks null `
 -NotifyAuthenticationSettingChange null `
 -PasswordReplayState null `
 -PreferredIdentityInviteTemplate null `
 -RedirectPatterns null `
 -SsoPartnerSource null `
 -SystemNotificationEmails null `
 -TrackAnalytics null `
 -UsageCertRequired null `
 -UsageCertText null `
 -UsernameEmptyText null `
 -UsernameLabel null `
 -WhiteList null `
 -ApprovalConfig null
```

- Convert the resource to JSON
```powershell
$UpdateOrgSettingsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

