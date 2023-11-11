# IdentityAttributePreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the attribute that is being previewed. | [optional] 
**Value** | [**SystemCollectionsHashtable**](.md) | Value that was derived during the preview. | [optional] 
**PreviousValue** | [**SystemCollectionsHashtable**](.md) | The value of the attribute before the preview. | [optional] 
**ErrorMessages** | [**ErrorMessageDto[]**](ErrorMessageDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttributePreview = Initialize-BetaIdentityAttributePreview  -Name email `
 -Value email@mail.com `
 -PreviousValue oldEmail@mail.com `
 -ErrorMessages null
```

- Convert the resource to JSON
```powershell
$IdentityAttributePreview | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

