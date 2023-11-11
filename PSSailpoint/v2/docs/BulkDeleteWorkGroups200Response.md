# BulkDeleteWorkGroups200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Deleted** | **String[]** |  | [optional] 
**InUse** | **String[]** |  | [optional] 
**NotFound** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkDeleteWorkGroups200Response = Initialize-V2BulkDeleteWorkGroups200Response  -Deleted null `
 -InUse null `
 -NotFound null
```

- Convert the resource to JSON
```powershell
$BulkDeleteWorkGroups200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

