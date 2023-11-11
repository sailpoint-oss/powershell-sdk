# AccessProfileSummaryAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | [**Reference1**](Reference1.md) |  | [optional] 
**Owner** | [**DisplayReference**](DisplayReference.md) |  | [optional] 
**Revocable** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileSummaryAllOf = Initialize-AccessProfileSummaryAllOf  -Source null `
 -Owner null `
 -Revocable true
```

- Convert the resource to JSON
```powershell
$AccessProfileSummaryAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

