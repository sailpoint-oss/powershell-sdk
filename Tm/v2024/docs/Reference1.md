# Reference1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | [optional] 
**Name** | **String** | The human readable name of the referenced object. | [optional] 

## Examples

- Prepare the resource
```powershell
$Reference1 = Initialize-Tm.V2024Reference1  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe
```

- Convert the resource to JSON
```powershell
$Reference1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

