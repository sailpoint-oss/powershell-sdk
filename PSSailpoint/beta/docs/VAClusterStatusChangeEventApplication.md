# VAClusterStatusChangeEventApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The GUID of the application | 
**Name** | **String** | The name of the application | 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Custom map of attributes for a source.  This will only be populated if type is &#x60;SOURCE&#x60; and the source has a proxy. | 

## Examples

- Prepare the resource
```powershell
$VAClusterStatusChangeEventApplication = Initialize-BetaVAClusterStatusChangeEventApplication  -Id 2c9180866166b5b0016167c32ef31a66 `
 -Name Production VA Cluster `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$VAClusterStatusChangeEventApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

