# GetLaunchers200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Next** | **String** | Pagination marker | [optional] 
**Items** | [**Launcher[]**](Launcher.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetLaunchers200Response = Initialize-PSSailpoint.BetaGetLaunchers200Response  -Next null `
 -Items null
```

- Convert the resource to JSON
```powershell
$GetLaunchers200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

