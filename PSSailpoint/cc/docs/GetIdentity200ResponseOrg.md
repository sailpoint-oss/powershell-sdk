# GetIdentity200ResponseOrg
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**ScriptName** | **String** |  | [optional] 
**Mode** | **String** |  | [optional] 
**NumQuestions** | **Decimal** |  | [optional] 
**Status** | **String** |  | [optional] 
**MaxRegisteredUsers** | **Decimal** |  | [optional] 
**Pod** | **String** |  | [optional] 
**PwdResetPersonalPhone** | **Boolean** |  | [optional] 
**PwdResetPersonalEmail** | **Boolean** |  | [optional] 
**PwdResetKba** | **Boolean** |  | [optional] 
**PwdResetEmail** | **Boolean** |  | [optional] 
**PwdResetDuo** | **Boolean** |  | [optional] 
**PwdResetPhoneMask** | **Boolean** |  | [optional] 
**AuthErrorText** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**StrongAuthKba** | **Boolean** |  | [optional] 
**StrongAuthPersonalPhone** | **Boolean** |  | [optional] 
**StrongAuthPersonalEmail** | **Boolean** |  | [optional] 
**Integrations** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) |  | [optional] 
**ProductName** | **String** |  | [optional] 
**KbaReqForAuthn** | **Decimal** |  | [optional] 
**KbaReqAnswers** | **Decimal** |  | [optional] 
**LockoutAttemptThreshold** | **Decimal** |  | [optional] 
**LockoutTimeMinutes** | **Decimal** |  | [optional] 
**UsageCertRequired** | **Boolean** |  | [optional] 
**AdminStrongAuthRequired** | **Boolean** |  | [optional] 
**EnableExternalPasswordChange** | **Boolean** |  | [optional] 
**EnablePasswordReplay** | **Boolean** |  | [optional] 
**EnableAutomaticPasswordReplay** | **Boolean** |  | [optional] 
**NotifyAuthenticationSettingChange** | **Boolean** |  | [optional] 
**Netmasks** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**CountryCodes** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**WhiteList** | **Boolean** |  | [optional] 
**UsernameEmptyText** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**UsernameLabel** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**EnableAutomationGeneration** | **Boolean** |  | [optional] 
**EmailTestMode** | **Boolean** |  | [optional] 
**EmailTestAddress** | **String** |  | [optional] 
**OrgType** | **String** |  | [optional] 
**PasswordReplayState** | **String** |  | [optional] 
**SystemNotificationConfig** | **String** |  | [optional] 
**RedirectPatterns** | **String** |  | [optional] 
**MaxClusterDebugHours** | **String** |  | [optional] 
**BrandName** | **String** |  | [optional] 
**Logo** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**EmailFromAddress** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**StandardLogoUrl** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**NarrowLogoUrl** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**ActionButtonColor** | **String** |  | [optional] 
**ActiveLinkColor** | **String** |  | [optional] 
**NavigationColor** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetIdentity200ResponseOrg = Initialize-CCGetIdentity200ResponseOrg  -Name null `
 -ScriptName null `
 -Mode null `
 -NumQuestions null `
 -Status null `
 -MaxRegisteredUsers null `
 -Pod null `
 -PwdResetPersonalPhone null `
 -PwdResetPersonalEmail null `
 -PwdResetKba null `
 -PwdResetEmail null `
 -PwdResetDuo null `
 -PwdResetPhoneMask null `
 -AuthErrorText null `
 -StrongAuthKba null `
 -StrongAuthPersonalPhone null `
 -StrongAuthPersonalEmail null `
 -Integrations null `
 -ProductName null `
 -KbaReqForAuthn null `
 -KbaReqAnswers null `
 -LockoutAttemptThreshold null `
 -LockoutTimeMinutes null `
 -UsageCertRequired null `
 -AdminStrongAuthRequired null `
 -EnableExternalPasswordChange null `
 -EnablePasswordReplay null `
 -EnableAutomaticPasswordReplay null `
 -NotifyAuthenticationSettingChange null `
 -Netmasks null `
 -CountryCodes null `
 -WhiteList null `
 -UsernameEmptyText null `
 -UsernameLabel null `
 -EnableAutomationGeneration null `
 -EmailTestMode null `
 -EmailTestAddress null `
 -OrgType null `
 -PasswordReplayState null `
 -SystemNotificationConfig null `
 -RedirectPatterns null `
 -MaxClusterDebugHours null `
 -BrandName null `
 -Logo null `
 -EmailFromAddress null `
 -StandardLogoUrl null `
 -NarrowLogoUrl null `
 -ActionButtonColor null `
 -ActiveLinkColor null `
 -NavigationColor null
```

- Convert the resource to JSON
```powershell
$GetIdentity200ResponseOrg | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

