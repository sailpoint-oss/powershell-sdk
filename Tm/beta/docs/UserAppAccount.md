# UserAppAccount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the account ID | [optional] 
**Type** | **String** | It will always be &quot;&quot;ACCOUNT&quot;&quot; | [optional] 
**Name** | **String** | the account name | [optional] 

## Examples

- Prepare the resource
```powershell
$UserAppAccount = Initialize-Tm.BetaUserAppAccount  -Id 85d173e7d57e496569df763231d6deb6a `
 -Type ACCOUNT `
 -Name test account
```

- Convert the resource to JSON
```powershell
$UserAppAccount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

