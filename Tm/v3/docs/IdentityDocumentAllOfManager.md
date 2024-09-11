# IdentityDocumentAllOfManager
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of identity&#39;s manager. | [optional] 
**Name** | **String** | Name of identity&#39;s manager. | [optional] 
**DisplayName** | **String** | Display name of identity&#39;s manager. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityDocumentAllOfManager = Initialize-Tm.V3IdentityDocumentAllOfManager  -Id 2c9180867dfe694b017e208e27c05799 `
 -Name Amanda.Ross `
 -DisplayName Amanda.Ross
```

- Convert the resource to JSON
```powershell
$IdentityDocumentAllOfManager | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

