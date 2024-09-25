# TestSourceConnectionMultihost200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | Source&#39;s test connection status. | [optional] 
**Message** | **String** | Source&#39;s test connection message. | [optional] 
**Timing** | **Int32** | Source&#39;s test connection timing. | [optional] 
**ResultType** | [**SystemCollectionsHashtable**](.md) | Source&#39;s human-readable result type. | [optional] 
**TestConnectionDetails** | **String** | Source&#39;s human-readable test connection details. | [optional] 

## Examples

- Prepare the resource
```powershell
$TestSourceConnectionMultihost200Response = Initialize-PSSailpoint.BetaTestSourceConnectionMultihost200Response  -Success true `
 -Message Tes. `
 -Timing null `
 -ResultType SOURCE_STATE_HEALTHY `
 -TestConnectionDetails null
```

- Convert the resource to JSON
```powershell
$TestSourceConnectionMultihost200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

