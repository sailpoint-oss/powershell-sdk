# IdentityPreviewResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**BaseReferenceDto1**](BaseReferenceDto1.md) |  | [optional] 
**PreviewAttributes** | [**IdentityAttributePreview[]**](IdentityAttributePreview.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityPreviewResponse = Initialize-PSSailpointBetaIdentityPreviewResponse  -Identity null `
 -PreviewAttributes null
```

- Convert the resource to JSON
```powershell
$IdentityPreviewResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

