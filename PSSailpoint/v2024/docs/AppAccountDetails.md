# AppAccountDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppId** | **String** | The source app ID | [optional] 
**AppDisplayName** | **String** | The source app display name | [optional] 
**SourceAccount** | [**AppAccountDetailsSourceAccount**](AppAccountDetailsSourceAccount.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppAccountDetails = Initialize-PSSailpointV2024AppAccountDetails  -AppId fbf4f72280304f1a8bc808fc2a3bcf7b `
 -AppDisplayName AD source app `
 -SourceAccount null
```

- Convert the resource to JSON
```powershell
$AppAccountDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

