# PutClientLogConfigurationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **String** | Log configuration&#39;s client ID | [optional] 
**DurationMinutes** | **Int32** | Duration in minutes for log configuration to remain in effect before resetting to defaults. | [optional] [default to 240]
**RootLevel** | [**StandardLevel**](StandardLevel.md) |  | 
**LogLevels** | [**System.Collections.Hashtable**](StandardLevel.md) | Mapping of identifiers to Standard Log Level values | [optional] 
**Expiration** | **System.DateTime** | Expiration date-time of the log configuration request.  Can be no greater than 24 hours from current date-time. | [optional] 

## Examples

- Prepare the resource
```powershell
$PutClientLogConfigurationRequest = Initialize-PSSailpoint.V2024PutClientLogConfigurationRequest  -ClientId 3a38a51992e8445ab51a549c0a70ee66 `
 -DurationMinutes 120 `
 -RootLevel null `
 -LogLevels INFO `
 -Expiration 2024-11-06T01:31:08.013164Z
```

- Convert the resource to JSON
```powershell
$PutClientLogConfigurationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
