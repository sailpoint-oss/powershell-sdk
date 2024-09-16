# UserAppSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the source ID | [optional] 
**Type** | **String** | It will always be &quot;&quot;SOURCE&quot;&quot; | [optional] 
**Name** | **String** | the source name | [optional] 

## Examples

- Prepare the resource
```powershell
$UserAppSource = Initialize-PSSailpoint.BetaUserAppSource  -Id 9870808a7190d06e01719938fcd20792 `
 -Type SOURCE `
 -Name test-source
```

- Convert the resource to JSON
```powershell
$UserAppSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

