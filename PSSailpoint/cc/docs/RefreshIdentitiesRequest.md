# RefreshIdentitiesRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFilter** | **String** | Defines the identity or identities which this refresh applies to. The filter must use searchable identity attributes. If the filter cannot be understood or parsed, all identities will be refreshed.  | [optional] 
**RefreshArgs** | [**RefreshIdentitiesRequestRefreshArgs**](RefreshIdentitiesRequestRefreshArgs.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RefreshIdentitiesRequest = Initialize-CCRefreshIdentitiesRequest  -VarFilter null `
 -RefreshArgs null
```

- Convert the resource to JSON
```powershell
$RefreshIdentitiesRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

