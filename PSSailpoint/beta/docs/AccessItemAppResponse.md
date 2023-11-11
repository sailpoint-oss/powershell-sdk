# AccessItemAppResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessType** | **String** | the access item type. entitlement in this case | [optional] 
**Id** | **String** | the access item id | [optional] 
**DisplayName** | **String** | the access profile display name | [optional] 
**SourceName** | **String** | the associated source name if it exists | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemAppResponse = Initialize-BetaAccessItemAppResponse  -AccessType app `
 -Id 2c918087763e69d901763e72e97f006f `
 -DisplayName Display Name `
 -SourceName appName
```

- Convert the resource to JSON
```powershell
$AccessItemAppResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

