# SpConfigUrl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** | URL for the target object endpoint. | [optional] 
**Query** | [**SystemCollectionsHashtable**](.md) | Any query parameters that are needed for the URL. | [optional] 

## Examples

- Prepare the resource
```powershell
$SpConfigUrl = Initialize-BetaSpConfigUrl  -Url ets://trigger-subscriptions/$id `
 -Query null
```

- Convert the resource to JSON
```powershell
$SpConfigUrl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

