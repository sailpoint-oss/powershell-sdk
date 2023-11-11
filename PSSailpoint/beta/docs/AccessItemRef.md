# AccessItemRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the access item for which to retrieve the recommendation | [optional] 
**Type** | **String** | The type of the access item. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemRef = Initialize-BetaAccessItemRef  -Id 2c938083633d259901633d2623ec0375 `
 -Type ENTITLEMENT
```

- Convert the resource to JSON
```powershell
$AccessItemRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

