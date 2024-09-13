# EventAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the trigger | 
**VarFilter** | **String** | JSON path expression that will limit which events the trigger will fire on | [optional] 
**Description** | **String** | Description of the event trigger | [optional] 

## Examples

- Prepare the resource
```powershell
$EventAttributes = Initialize-PSSailpoint.V3EventAttributes  -Id idn:identity-attributes-changed `
 -VarFilter $.changes[?(@.attribute &#x3D;&#x3D; &#39;manager&#39;)] `
 -Description null
```

- Convert the resource to JSON
```powershell
$EventAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

