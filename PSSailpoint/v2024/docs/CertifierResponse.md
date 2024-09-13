# CertifierResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the id of the certifier | [optional] 
**DisplayName** | **String** | the name of the certifier | [optional] 

## Examples

- Prepare the resource
```powershell
$CertifierResponse = Initialize-PSSailpoint.V2024CertifierResponse  -Id 8a80828f643d484f01643e14202e206f `
 -DisplayName John Snow
```

- Convert the resource to JSON
```powershell
$CertifierResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

