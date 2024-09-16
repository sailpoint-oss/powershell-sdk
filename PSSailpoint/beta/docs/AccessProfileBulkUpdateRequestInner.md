# AccessProfileBulkUpdateRequestInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Access Profile ID. | [optional] 
**Requestable** | **Boolean** | Access Profile is requestable or not. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileBulkUpdateRequestInner = Initialize-PSSailpoint.BetaAccessProfileBulkUpdateRequestInner  -Id 464ae7bf-791e-49fd-b746-06a2e4a8 `
 -Requestable false
```

- Convert the resource to JSON
```powershell
$AccessProfileBulkUpdateRequestInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

