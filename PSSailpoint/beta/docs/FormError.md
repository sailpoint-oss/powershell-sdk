# FormError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | Key is the technical key | [optional] 
**Messages** | [**ErrorMessage[]**](ErrorMessage.md) | Messages is a list of web.ErrorMessage items | [optional] 
**Value** | [**SystemCollectionsHashtable**](.md) | Value is the value associated with a Key | [optional] 

## Examples

- Prepare the resource
```powershell
$FormError = Initialize-BetaFormError  -Key department `
 -Messages null `
 -Value Engineering
```

- Convert the resource to JSON
```powershell
$FormError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

