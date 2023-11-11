# Field
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the FormItem | [optional] 
**DisplayName** | **String** | Display name of the field | [optional] 
**DisplayType** | **String** | Type of the field to display | [optional] 
**Required** | **Boolean** | True if the field is required | [optional] 
**AllowedValuesList** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | List of allowed values for the field | [optional] 
**Value** | [**SystemCollectionsHashtable**](.md) | Value of the field | [optional] 

## Examples

- Prepare the resource
```powershell
$Field = Initialize-BetaField  -Name Field1 `
 -DisplayName Field 1 `
 -DisplayType checkbox `
 -Required null `
 -AllowedValuesList [{Val1Display&#x3D;null, Val1Value&#x3D;null}, {Val2Display&#x3D;null, Val2Value&#x3D;null}] `
 -Value null
```

- Convert the resource to JSON
```powershell
$Field | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

