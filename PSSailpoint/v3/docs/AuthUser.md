# AuthUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tenant** | **String** | Tenant name. | [optional] 
**Id** | **String** | Identity ID. | [optional] 
**Uid** | **String** | Identity unique identitifier. | [optional] 
**VarProfile** | **String** | ID of the auth profile associated with this auth user. | [optional] 
**IdentificationNumber** | **String** | Auth user employee number. | [optional] 
**Email** | **String** | Auth user&#39;s email. | [optional] 
**Phone** | **String** | Auth user&#39;s phone number. | [optional] 
**WorkPhone** | **String** | Auth user&#39;s work phone number. | [optional] 
**PersonalEmail** | **String** | Auth user&#39;s personal email. | [optional] 
**Firstname** | **String** | Auth user&#39;s first name. | [optional] 
**Lastname** | **String** | Auth user&#39;s last name. | [optional] 
**DisplayName** | **String** | Auth user&#39;s name in displayed format. | [optional] 
**Alias** | **String** | Auth user&#39;s alias. | [optional] 
**LastPasswordChangeDate** | **String** | the date of last password change | [optional] 
**LastLoginTimestamp** | **Int64** | Timestamp of the last login (long type value). | [optional] 
**CurrentLoginTimestamp** | **Int64** | Timestamp of the current login (long type value). | [optional] 
**Capabilities** | **String[]** | Array of capabilities for this auth user. | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthUser = Initialize-AuthUser  -Tenant test-tenant `
 -Id 2c91808458ae7a4f0158b1bbf8af0628 `
 -Uid will.smith `
 -VarProfile 2c91808458ae7a4f0158b1bbf8af0756 `
 -IdentificationNumber 19-5588452 `
 -Email william.smith@example.com `
 -Phone 5555555555 `
 -WorkPhone 5555555555 `
 -PersonalEmail william.smith@example.com `
 -Firstname Will `
 -Lastname Smith `
 -DisplayName Will Smith `
 -Alias will.smith `
 -LastPasswordChangeDate 2021-03-08T22:37:33.901Z `
 -LastLoginTimestamp 1656327185832 `
 -CurrentLoginTimestamp 1656327185832 `
 -Capabilities null
```

- Convert the resource to JSON
```powershell
$AuthUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

