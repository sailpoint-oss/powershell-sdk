# AccessRequestContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextAttributes** | [**ContextAttributeDto[]**](ContextAttributeDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestContext = Initialize-Tm.BetaAccessRequestContext  -ContextAttributes null
```

- Convert the resource to JSON
```powershell
$AccessRequestContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

