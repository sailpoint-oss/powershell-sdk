# PublicIdentityConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**PublicIdentityAttributeConfig[]**](PublicIdentityAttributeConfig.md) | Up to 5 identity attributes that will be available to everyone in the org for all users in the org. | [optional] 
**Modified** | **System.DateTime** | When this configuration was last modified. | [optional] 
**ModifiedBy** | [**IdentityReference**](IdentityReference.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PublicIdentityConfig = Initialize-PublicIdentityConfig  -Attributes null `
 -Modified 2018-06-25T20:22:28.104Z `
 -ModifiedBy null
```

- Convert the resource to JSON
```powershell
$PublicIdentityConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

