# ListAccounts200ResponseInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 
**PasswordRequired** | **Boolean** |  | [optional] 
**PasswordProvided** | **Boolean** |  | [optional] 
**Apps** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) |  | [optional] 
**SsoMethod** | **String** |  | [optional] 
**IdEncryption** | **String** |  | [optional] 
**PasswordEncryption** | **String** |  | [optional] 
**LastPasswdChange** | **String** |  | [optional] 
**ServiceName** | **String** |  | [optional] 
**DateDisabled** | **String** |  | [optional] 
**AccountServiceId** | **Int32** |  | [optional] 
**ServiceId** | **Int32** |  | [optional] 
**PendingPasswordRequestId** | **String** |  | [optional] 
**PasswordChangeStatus** | **String** |  | [optional] 
**PasswordChangeResult** | [**ListAccounts200ResponseInnerPasswordChangeResult**](ListAccounts200ResponseInnerPasswordChangeResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ListAccounts200ResponseInner = Initialize-CCListAccounts200ResponseInner  -Id 17248154 `
 -Type SYSTEM_CONTROLLED `
 -DisplayName tyler.mairose `
 -Username tyler.mairose `
 -PasswordRequired null `
 -PasswordProvided null `
 -Apps null `
 -SsoMethod NONE `
 -IdEncryption NONE `
 -PasswordEncryption NONE `
 -LastPasswdChange null `
 -ServiceName airtable v4 `
 -DateDisabled null `
 -AccountServiceId 44663 `
 -ServiceId 44663 `
 -PendingPasswordRequestId null `
 -PasswordChangeStatus SUCCESS `
 -PasswordChangeResult null
```

- Convert the resource to JSON
```powershell
$ListAccounts200ResponseInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

