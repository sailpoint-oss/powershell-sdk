# SourceSyncPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Payload type. | 
**DataJson** | **String** | Payload type. | 

## Examples

- Prepare the resource
```powershell
$SourceSyncPayload = Initialize-BetaSourceSyncPayload  -Type SYNCHRONIZE_SOURCE_ATTRIBUTES `
 -DataJson {&quot;sourceId&quot;:&quot;2c918083746f642c01746f990884012a&quot;}
```

- Convert the resource to JSON
```powershell
$SourceSyncPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

