# SpConfigMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | Message key. | 
**Text** | **String** | Message text. | 
**Details** | [**System.Collections.Hashtable**](AnyType.md) | Message details if any, in key:value pairs. | 

## Examples

- Prepare the resource
```powershell
$SpConfigMessage = Initialize-SpConfigMessage  -Key UNKNOWN_REFERENCE_RESOLVER `
 -Text Unable to resolve reference for object [type: IDENTITY, id: 2c91808c746e9c9601747d6507332ecz, name: random identity] `
 -Details {details&#x3D;message details}
```

- Convert the resource to JSON
```powershell
$SpConfigMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

