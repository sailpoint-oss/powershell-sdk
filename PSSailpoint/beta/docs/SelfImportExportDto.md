# SelfImportExportDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Imported/exported object&#39;s DTO type. Import is currently only possible with the IDENTITY_OBJECT_CONFIG, IDENTITY_PROFILE, RULE, SOURCE, TRANSFORM, and TRIGGER_SUBSCRIPTION object types. | [optional] 
**Id** | **String** | Imported/exported object&#39;s ID. | [optional] 
**Name** | **String** | Imported/exported object&#39;s display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$SelfImportExportDto = Initialize-BetaSelfImportExportDto  -Type SOURCE `
 -Id 2c9180835d191a86015d28455b4b232a `
 -Name HR Active Directory
```

- Convert the resource to JSON
```powershell
$SelfImportExportDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

