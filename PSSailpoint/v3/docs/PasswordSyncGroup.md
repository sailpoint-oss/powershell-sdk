# PasswordSyncGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the sync group | [optional] 
**Name** | **String** | Name of the sync group | [optional] 
**PasswordPolicyId** | **String** | ID of the password policy | [optional] 
**SourceIds** | **String[]** | List of password managed sources IDs | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordSyncGroup = Initialize-PasswordSyncGroup  -Id 6881f631-3bd5-4213-9c75-8e05cc3e35dd `
 -Name Password Sync Group 1 `
 -PasswordPolicyId 2c91808d744ba0ce01746f93b6204501 `
 -SourceIds [2c918084660f45d6016617daa9210584, 2c918084660f45d6016617daa9210500]
```

- Convert the resource to JSON
```powershell
$PasswordSyncGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

