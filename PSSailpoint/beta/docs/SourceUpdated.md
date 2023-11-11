# SourceUpdated
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the source. | 
**Name** | **String** | The user friendly name of the source. | 
**Type** | **String** | The connection type of the source. | 
**Modified** | **System.DateTime** | The date and time the source was modified. | 
**Connector** | **String** | The connector type used to connect to the source. | 
**Actor** | [**SourceUpdatedActor**](SourceUpdatedActor.md) |  | 

## Examples

- Prepare the resource
```powershell
$SourceUpdated = Initialize-BetaSourceUpdated  -Id 2c9180866166b5b0016167c32ef31a66 `
 -Name Corporate Active Directory `
 -Type DIRECT_CONNECT `
 -Modified 2021-03-29T22:01:50.474Z `
 -Connector active-directory `
 -Actor null
```

- Convert the resource to JSON
```powershell
$SourceUpdated | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

