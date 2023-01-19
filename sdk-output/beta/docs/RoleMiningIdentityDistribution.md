# RoleMiningIdentityDistribution
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttributeName** | **String** | Id of the potential role | [optional] 
**Distribution** | [**System.Collections.Hashtable[]**](Map.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningIdentityDistribution = Initialize-PSSailpointBetaRoleMiningIdentityDistribution  -AttributeName null `
 -Distribution null
```

- Convert the resource to JSON
```powershell
$RoleMiningIdentityDistribution | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

