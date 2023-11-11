# PublicIdentityConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**PublicIdentityAttributeConfig[]**](PublicIdentityAttributeConfig.md) |  | [optional] 
**ModifiedBy** | [**IdentityReference**](IdentityReference.md) |  | [optional] 
**Modified** | **System.DateTime** | the date/time of the modification | [optional] 

## Examples

- Prepare the resource
```powershell
$PublicIdentityConfig = Initialize-BetaPublicIdentityConfig  -Attributes null `
 -ModifiedBy null `
 -Modified 2018-06-25T20:22:28.104Z
```

- Convert the resource to JSON
```powershell
$PublicIdentityConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

