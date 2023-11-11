# CreateApplicationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateApplicationRequest = Initialize-CCCreateApplicationRequest  -Name My App `
 -Description null
```

- Convert the resource to JSON
```powershell
$CreateApplicationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

