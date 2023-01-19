# ClientLogConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **String** | client ID of the Log configuration | [optional] 
**DurationMinutes** | **Int32** | duration in minutes for the log configuration to remain in effect before resetting to defaults | 
**Expiration** | **System.DateTime** | Expiration date-time of the log configuration request | [optional] 
**RootLevel** | [**StandardLevel**](StandardLevel.md) |  | 
**LogLevels** | [**System.Collections.Hashtable**](StandardLevel.md) | Mapping of identifiers to Standard Log Level values | [optional] 

## Examples

- Prepare the resource
```powershell
$ClientLogConfiguration = Initialize-PSSailpointBetaClientLogConfiguration  -ClientId aClientId `
 -DurationMinutes 120 `
 -Expiration null `
 -RootLevel null `
 -LogLevels INFO
```

- Convert the resource to JSON
```powershell
$ClientLogConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

