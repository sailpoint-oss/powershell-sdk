# ImportObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of object created or updated by import. | [optional] 
**Id** | **String** | ID of object created or updated by import. | [optional] 
**Name** | **String** | Display name of object created or updated by import. | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportObject = Initialize-ImportObject  -Type SOURCE `
 -Id 2c9180835d191a86015d28455b4b232a `
 -Name HR Active Directory
```

- Convert the resource to JSON
```powershell
$ImportObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

