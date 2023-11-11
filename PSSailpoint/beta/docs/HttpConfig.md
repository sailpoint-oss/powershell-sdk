# HttpConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** | URL of the external/custom integration. | 
**HttpDispatchMode** | [**HttpDispatchMode**](HttpDispatchMode.md) |  | 
**HttpAuthenticationType** | [**HttpAuthenticationType**](HttpAuthenticationType.md) |  | [optional] 
**BasicAuthConfig** | [**BasicAuthConfig**](BasicAuthConfig.md) |  | [optional] 
**BearerTokenAuthConfig** | [**BearerTokenAuthConfig**](BearerTokenAuthConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HttpConfig = Initialize-BetaHttpConfig  -Url https://www.example.com `
 -HttpDispatchMode null `
 -HttpAuthenticationType null `
 -BasicAuthConfig null `
 -BearerTokenAuthConfig null
```

- Convert the resource to JSON
```powershell
$HttpConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

