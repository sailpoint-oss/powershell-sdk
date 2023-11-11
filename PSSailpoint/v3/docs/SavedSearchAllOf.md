# SavedSearchAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The saved search ID.  | [optional] 
**Owner** | [**TypedReference**](TypedReference.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SavedSearchAllOf = Initialize-SavedSearchAllOf  -Id 0de46054-fe90-434a-b84e-c6b3359d0c64 `
 -Owner null
```

- Convert the resource to JSON
```powershell
$SavedSearchAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

