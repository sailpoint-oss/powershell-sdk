# AccessProfileSourceRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the Source with with which the Access Profile is associated | [optional] 
**Type** | **String** | The type of the Source, will always be SOURCE | [optional] 
**Name** | **String** | The display name of the associated Source | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileSourceRef = Initialize-AccessProfileSourceRef  -Id 2c91809773dee3610173fdb0b6061ef4 `
 -Type SOURCE `
 -Name ODS-AD-SOURCE
```

- Convert the resource to JSON
```powershell
$AccessProfileSourceRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

