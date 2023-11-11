# AccessProfileRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the Access Profile | [optional] 
**Type** | **String** | Type of requested object. This field must be either left null or set to &#39;ACCESS_PROFILE&#39; when creating an Access Profile, otherwise a 400 Bad Request error will result. | [optional] 
**Name** | **String** | Human-readable display name of the Access Profile. This field is ignored on input. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileRef = Initialize-AccessProfileRef  -Id ff808081751e6e129f1518161919ecca `
 -Type ACCESS_PROFILE `
 -Name Access Profile 2567
```

- Convert the resource to JSON
```powershell
$AccessProfileRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

