# AuthProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Authentication Profile name. | [optional] 
**OffNetwork** | **Boolean** | Use it to block access from off network. | [optional] [default to $false]
**UntrustedGeography** | **Boolean** | Use it to block access from untrusted geoographies. | [optional] [default to $false]
**ApplicationId** | **String** | Application ID. | [optional] 
**ApplicationName** | **String** | Application name. | [optional] 
**Type** | **String** | Type of the Authentication Profile. | [optional] 
**StrongAuthLogin** | **Boolean** | Use it to enable strong authentication. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$AuthProfile = Initialize-Tm.V2024AuthProfile  -Name EndToEnd-Profile `
 -OffNetwork true `
 -UntrustedGeography true `
 -ApplicationId 2c91808458ae7a4f0158b1bbf8af0628 `
 -ApplicationName EndToEnd-Source `
 -Type PTA `
 -StrongAuthLogin true
```

- Convert the resource to JSON
```powershell
$AuthProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

