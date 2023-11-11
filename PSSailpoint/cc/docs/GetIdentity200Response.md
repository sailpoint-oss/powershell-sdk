# GetIdentity200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Alias** | **String** |  | [optional] 
**Uid** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Uuid** | **String** |  | [optional] 
**EncryptionKey** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**EncryptionCheck** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Status** | **String** |  | [optional] 
**Pending** | **Boolean** |  | [optional] 
**PasswordResetSinceLastLogin** | **Boolean** |  | [optional] 
**UsageCertAttested** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**UserFlags** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**AltAuthVia** | **String** |  | [optional] 
**AltAuthViaIntegrationData** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**KbaAnswers** | **Decimal** |  | [optional] 
**DisablePasswordReset** | **Boolean** |  | [optional] 
**PtaSourceId** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**SupportsPasswordPush** | **Boolean** |  | [optional] 
**Attributes** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**Role** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) |  | [optional] 
**Phone** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Email** | **String** |  | [optional] 
**PersonalEmail** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**EmployeeNumber** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**RiskScore** | **Decimal** |  | [optional] 
**FeatureFlags** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Feature** | **String[]** |  | [optional] 
**OrgEncryptionKey** | **String** |  | [optional] 
**OrgEncryptionKeyId** | **String** |  | [optional] 
**Meta** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Org** | [**GetIdentity200ResponseOrg**](GetIdentity200ResponseOrg.md) |  | [optional] 
**StepUpAuth** | **Boolean** |  | [optional] 
**BxInstallPrompted** | **Boolean** |  | [optional] 
**FederatedLogin** | **Boolean** |  | [optional] 
**Auth** | [**GetIdentity200ResponseAuth**](GetIdentity200ResponseAuth.md) |  | [optional] 
**OnNetwork** | **Boolean** |  | [optional] 
**OnTrustedGeo** | **Boolean** |  | [optional] 
**LoginUrl** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetIdentity200Response = Initialize-CCGetIdentity200Response  -Id null `
 -Alias null `
 -Uid null `
 -Name null `
 -DisplayName null `
 -Uuid null `
 -EncryptionKey null `
 -EncryptionCheck null `
 -Status null `
 -Pending null `
 -PasswordResetSinceLastLogin null `
 -UsageCertAttested null `
 -UserFlags null `
 -Enabled null `
 -AltAuthVia null `
 -AltAuthViaIntegrationData null `
 -KbaAnswers null `
 -DisablePasswordReset null `
 -PtaSourceId null `
 -SupportsPasswordPush null `
 -Attributes null `
 -ExternalId null `
 -Role null `
 -Phone null `
 -Email null `
 -PersonalEmail null `
 -EmployeeNumber null `
 -RiskScore null `
 -FeatureFlags null `
 -Feature null `
 -OrgEncryptionKey null `
 -OrgEncryptionKeyId null `
 -Meta null `
 -Org null `
 -StepUpAuth null `
 -BxInstallPrompted null `
 -FederatedLogin null `
 -Auth null `
 -OnNetwork null `
 -OnTrustedGeo null `
 -LoginUrl null
```

- Convert the resource to JSON
```powershell
$GetIdentity200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

