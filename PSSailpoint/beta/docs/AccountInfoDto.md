# AccountInfoDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NativeIdentity** | **String** | The unique ID of the account generated by the source system | [optional] 
**DisplayName** | **String** | Display name for this account | [optional] 
**Uuid** | **String** | UUID associated with this account | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountInfoDto = Initialize-PSSailpoint.BetaAccountInfoDto  -NativeIdentity CN&#x3D;Abby Smith,OU&#x3D;Austin,OU&#x3D;Americas,OU&#x3D;Demo,DC&#x3D;seri,DC&#x3D;acme,DC&#x3D;com `
 -DisplayName Abby.Smith `
 -Uuid {ad9fc391-246d-40af-b248-b6556a2b7c01}
```

- Convert the resource to JSON
```powershell
$AccountInfoDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

