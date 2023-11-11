# GetApplication200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**AppId** | **String** |  | [optional] 
**ServiceId** | **String** |  | [optional] 
**ServiceAppId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**AppCenterEnabled** | **Boolean** |  | [optional] 
**ProvisionRequestEnabled** | **Boolean** |  | [optional] 
**ControlType** | **String** |  | [optional] 
**Mobile** | **Boolean** |  | [optional] 
**PrivateApp** | **Boolean** |  | [optional] 
**ScriptName** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**Icon** | **String** |  | [optional] 
**Health** | [**ListApplications200ResponseInnerHealth**](ListApplications200ResponseInnerHealth.md) |  | [optional] 
**EnableSso** | **Boolean** |  | [optional] 
**SsoMethod** | **String** |  | [optional] 
**HasLinks** | **Boolean** |  | [optional] 
**HasAutomations** | **Boolean** |  | [optional] 
**StepUpAuthData** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**StepUpAuthType** | **String** |  | [optional] 
**UsageAnalytics** | **Boolean** |  | [optional] 
**UsageCertRequired** | **Boolean** |  | [optional] 
**UsageCertText** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**LaunchpadEnabled** | **Boolean** |  | [optional] 
**PasswordManaged** | **Boolean** |  | [optional] 
**Owner** | [**ListApplications200ResponseInnerOwner**](ListApplications200ResponseInnerOwner.md) |  | [optional] 
**DateCreated** | **Decimal** |  | [optional] 
**LastUpdated** | **Decimal** |  | [optional] 
**DefaultAccessProfile** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Service** | **String** |  | [optional] 
**SelectedSsoMethod** | **String** |  | [optional] 
**SupportedSsoMethods** | **Decimal** |  | [optional] 
**OffNetworkBlockedRoles** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**SupportedOffNetwork** | **String** |  | [optional] 
**AccountServiceId** | **Decimal** |  | [optional] 
**LauncherCount** | **Decimal** |  | [optional] 
**AccountServiceName** | **String** |  | [optional] 
**AccountServiceExternalId** | **String** |  | [optional] 
**AccountServiceMatchAllAccounts** | **Boolean** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**AccountServiceUseForPasswordManagement** | **Boolean** |  | [optional] 
**AccountServicePolicyId** | **String** |  | [optional] 
**AccountServicePolicyName** | **String** |  | [optional] 
**RequireStrongAuthn** | **Boolean** |  | [optional] 
**AccountServicePolicies** | [**ListApplications200ResponseInnerAccountServicePoliciesInner[]**](ListApplications200ResponseInnerAccountServicePoliciesInner.md) |  | [optional] 
**XsdVersion** | **String** |  | [optional] 
**AppProfiles** | [**ListApplications200ResponseInnerAppProfilesInner[]**](ListApplications200ResponseInnerAppProfilesInner.md) |  | [optional] 
**PasswordServiceId** | **Decimal** |  | [optional] 
**AccessProfileIds** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetApplication200Response = Initialize-CCGetApplication200Response  -Id null `
 -AppId null `
 -ServiceId null `
 -ServiceAppId null `
 -Name null `
 -Description null `
 -AppCenterEnabled null `
 -ProvisionRequestEnabled null `
 -ControlType null `
 -Mobile null `
 -PrivateApp null `
 -ScriptName null `
 -Status null `
 -Icon null `
 -Health null `
 -EnableSso null `
 -SsoMethod null `
 -HasLinks null `
 -HasAutomations null `
 -StepUpAuthData null `
 -StepUpAuthType null `
 -UsageAnalytics null `
 -UsageCertRequired null `
 -UsageCertText null `
 -LaunchpadEnabled null `
 -PasswordManaged null `
 -Owner null `
 -DateCreated null `
 -LastUpdated null `
 -DefaultAccessProfile null `
 -Service null `
 -SelectedSsoMethod null `
 -SupportedSsoMethods null `
 -OffNetworkBlockedRoles null `
 -SupportedOffNetwork null `
 -AccountServiceId null `
 -LauncherCount null `
 -AccountServiceName null `
 -AccountServiceExternalId null `
 -AccountServiceMatchAllAccounts null `
 -ExternalId null `
 -AccountServiceUseForPasswordManagement null `
 -AccountServicePolicyId null `
 -AccountServicePolicyName null `
 -RequireStrongAuthn null `
 -AccountServicePolicies null `
 -XsdVersion null `
 -AppProfiles null `
 -PasswordServiceId null `
 -AccessProfileIds null
```

- Convert the resource to JSON
```powershell
$GetApplication200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

