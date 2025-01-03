# AccessRequestResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewRequests** | [**AccessRequestTracking[]**](AccessRequestTracking.md) | A list of new access request tracking data mapped to the values requested. | [optional] 
**ExistingRequests** | [**AccessRequestTracking[]**](AccessRequestTracking.md) | A list of existing access request tracking data mapped to the values requested.  This indicates access has already been requested for this item. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestResponse = Initialize-PSSailpoint.V2024AccessRequestResponse  -NewRequests [{requestedFor&#x3D;899fd612ecfc4cf3bf48f14d0afdef89, requestedItemsDetails&#x3D;[{type&#x3D;ENTITLEMENT, id&#x3D;779c6fd7171540bba1184e5946112c28}], attributesHash&#x3D;-1928438224, accessRequestIds&#x3D;[5d3118c518a44ec7805450d53479ccdb]}] `
 -ExistingRequests [{requestedFor&#x3D;899fd612ecfc4cf3bf48f14d0afdef89, requestedItemsDetails&#x3D;[{type&#x3D;ROLE, id&#x3D;779c6fd7171540bbc1184e5946112c28}], attributesHash&#x3D;2843118224, accessRequestIds&#x3D;[5d3118c518a44ec7805450d53479ccdc]}]
```

- Convert the resource to JSON
```powershell
$AccessRequestResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

