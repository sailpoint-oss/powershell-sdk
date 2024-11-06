# ClientLogConfigurationExpiration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **String** | Log configuration&#39;s client ID | [optional] 
**Expiration** | **System.DateTime** | Expiration date-time of the log configuration request.  Can be no greater than 24 hours from current date-time. | [optional] 
**RootLevel** | [**StandardLevel**](StandardLevel.md) |  | 
**LogLevels** | [**System.Collections.Hashtable**](StandardLevel.md) | Mapping of identifiers to Standard Log Level values | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientLogConfigurationExpiration = Initialize-PSSailpoint.V3ClientLogConfigurationExpiration  -ClientId 3a38a51992e8445ab51a549c0a70ee66 `
 -Expiration 2024-11-06T01:31:08.013164Z `
 -RootLevel null `
 -LogLevels INFO
```

- Convert the resource to JSON
```powershell
$ClientLogConfigurationExpiration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

