# SourceCreated
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the source. | 
**Name** | **String** | Human friendly name of the source. | 
**Type** | **String** | The connection type. | 
**Created** | **System.DateTime** | The date and time the source was created. | 
**Connector** | **String** | The connector type used to connect to the source. | 
**Actor** | [**SourceCreatedActor**](SourceCreatedActor.md) |  | 

## Examples

- Prepare the resource
```powershell
$SourceCreated = Initialize-BetaSourceCreated  -Id 2c9180866166b5b0016167c32ef31a66 `
 -Name Test source `
 -Type DIRECT_CONNECT `
 -Created 2021-03-29T22:01:50.474Z `
 -Connector active-directory `
 -Actor null
```

- Convert the resource to JSON
```powershell
$SourceCreated | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

