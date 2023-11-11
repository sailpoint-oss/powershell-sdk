# GetOrgSettings200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**DateCreated** | **System.DateTime** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] 
**ScriptName** | **String** |  | [optional] 
**SsoDomain** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**MaxRegisteredIdentities** | **Int32** |  | [optional] 
**IdentityCount** | **Int32** |  | [optional] 
**KbaReqForAuthn** | **Int32** |  | [optional] 
**KbaReqAnswers** | **Int32** |  | [optional] 
**LockoutAttemptThreshold** | **Int32** |  | [optional] 
**LockoutTimeMinutes** | **Int32** |  | [optional] 
**UsageCertRequired** | **Boolean** |  | [optional] 
**AdminStrongAuthRequired** | **Boolean** |  | [optional] 
**EnableExternalPasswordChange** | **Boolean** |  | [optional] 
**EnablePasswordReplay** | **Boolean** |  | [optional] 
**EnableAutomaticPasswordReplay** | **Boolean** |  | [optional] 
**Netmasks** | **String[]** |  | [optional] 
**CountryCodes** | **String[]** |  | [optional] 
**WhiteList** | **Boolean** |  | [optional] 
**EmailTestMode** | **Boolean** |  | [optional] 
**EmailTestAddress** | **String** |  | [optional] 
**UsernameEmptyText** | **String** |  | [optional] 
**UsernameLabel** | **String** |  | [optional] 
**EnableAutomationGeneration** | **Boolean** |  | [optional] 
**PasswordReplayState** | **String** |  | [optional] 
**SystemNotificationConfig** | [**GetOrgSettings200ResponseSystemNotificationConfig**](GetOrgSettings200ResponseSystemNotificationConfig.md) |  | [optional] 
**SystemNotificationEmails** | **String[]** |  | [optional] 
**LoginUrl** | **String** |  | [optional] 
**RedirectPatterns** | **String[]** |  | [optional] 
**StyleHash** | **String** |  | [optional] 
**ApprovalConfig** | [**GetOrgSettings200ResponseApprovalConfig**](GetOrgSettings200ResponseApprovalConfig.md) |  | [optional] 
**SsoPartnerSource** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetOrgSettings200Response = Initialize-V2GetOrgSettings200Response  -Id null `
 -Name null `
 -Description null `
 -DateCreated null `
 -LastUpdated null `
 -ScriptName null `
 -SsoDomain null `
 -Status null `
 -MaxRegisteredIdentities null `
 -IdentityCount null `
 -KbaReqForAuthn null `
 -KbaReqAnswers null `
 -LockoutAttemptThreshold null `
 -LockoutTimeMinutes null `
 -UsageCertRequired null `
 -AdminStrongAuthRequired null `
 -EnableExternalPasswordChange null `
 -EnablePasswordReplay null `
 -EnableAutomaticPasswordReplay null `
 -Netmasks null `
 -CountryCodes null `
 -WhiteList null `
 -EmailTestMode null `
 -EmailTestAddress null `
 -UsernameEmptyText null `
 -UsernameLabel null `
 -EnableAutomationGeneration null `
 -PasswordReplayState null `
 -SystemNotificationConfig null `
 -SystemNotificationEmails null `
 -LoginUrl null `
 -RedirectPatterns null `
 -StyleHash null `
 -ApprovalConfig null `
 -SsoPartnerSource null
```

- Convert the resource to JSON
```powershell
$GetOrgSettings200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

