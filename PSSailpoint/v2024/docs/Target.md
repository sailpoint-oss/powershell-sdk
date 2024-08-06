# Target
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Target ID | [optional] 
**Type** | **String** | Target type | [optional] 
**Name** | **String** | Target name | [optional] 

## Examples

- Prepare the resource
```powershell
$Target = Initialize-PSSailpointV2024Target  -Id c6dc37bf508149b28ce5b7d90ca4bbf9 `
 -Type APPLICATION `
 -Name Active Directory [source]
```

- Convert the resource to JSON
```powershell
$Target | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

