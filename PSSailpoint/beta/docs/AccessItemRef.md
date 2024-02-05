# AccessItemRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the access item to retrieve the recommendation for. | [optional] 
**Type** | **String** | Access item&#39;s type. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemRef = Initialize-PSSailpointBetaAccessItemRef  -Id 2c938083633d259901633d2623ec0375 `
 -Type ENTITLEMENT
```

- Convert the resource to JSON
```powershell
$AccessItemRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

