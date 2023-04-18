# InternalIdentityDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The identity ID | 
**InternalCloudStatus** | **String** | Internal cloud status of identity. | 

## Examples

- Prepare the resource
```powershell
$InternalIdentityDto = Initialize-PSSailpointBetaInternalIdentityDto  -Id 2c9079b270a266a60170a277bb960008 `
 -InternalCloudStatus UNREGISTERED
```

- Convert the resource to JSON
```powershell
$InternalIdentityDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

