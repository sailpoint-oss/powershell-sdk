# AttributesChanged
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Changes** | [**AttributeChange[]**](AttributeChange.md) |  | [optional] 
**EventType** | **String** | the event type | [optional] 
**IdentityId** | **String** | the identity id | [optional] 
**Dt** | **String** | the date of event | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributesChanged = Initialize-BetaAttributesChanged  -Changes null `
 -EventType null `
 -IdentityId null `
 -Dt null
```

- Convert the resource to JSON
```powershell
$AttributesChanged | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

