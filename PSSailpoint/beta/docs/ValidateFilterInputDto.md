# ValidateFilterInputDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarInput** | [**SystemCollectionsHashtable**](.md) | Mock input to evaluate filter expression against. | 
**VarFilter** | **String** | JSONPath filter to conditionally invoke trigger when expression evaluates to true. | 

## Examples

- Prepare the resource
```powershell
$ValidateFilterInputDto = Initialize-BetaValidateFilterInputDto  -VarInput {identityId&#x3D;201327fda1c44704ac01181e963d463c} `
 -VarFilter $[?($.identityId &#x3D;&#x3D; &quot;201327fda1c44704ac01181e963d463c&quot;)]
```

- Convert the resource to JSON
```powershell
$ValidateFilterInputDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

