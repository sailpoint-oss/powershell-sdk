# UserAppSourceApp
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the source app ID | [optional] 
**Type** | **String** | It will always be &quot;&quot;APPLICATION&quot;&quot; | [optional] 
**Name** | **String** | the source app name | [optional] 

## Examples

- Prepare the resource
```powershell
$UserAppSourceApp = Initialize-Tm.V2024UserAppSourceApp  -Id edcb0951812949d085b60cd8bf35bc78 `
 -Type APPLICATION `
 -Name test-app
```

- Convert the resource to JSON
```powershell
$UserAppSourceApp | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

