# TaskStatusMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of the message | 
**LocalizedText** | [**LocalizedMessage**](LocalizedMessage.md) |  | 
**Key** | **String** | Key of the message | 
**Parameters** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | Message parameters for internationalization | 

## Examples

- Prepare the resource
```powershell
$TaskStatusMessage = Initialize-BetaTaskStatusMessage  -Type INFO `
 -LocalizedText null `
 -Key akey `
 -Parameters [{name&#x3D;value}]
```

- Convert the resource to JSON
```powershell
$TaskStatusMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

