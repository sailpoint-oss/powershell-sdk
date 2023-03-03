# DomainAddressDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** | A domain address | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainAddressDto = Initialize-PSSailpointBetaDomainAddressDto  -Domain sailpoint.com
```

- Convert the resource to JSON
```powershell
$DomainAddressDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

