# ProvisioningPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | the provisioning policy name | 
**Description** | **String** | the description of the provisioning policy | [optional] 
**UsageType** | [**UsageType**](UsageType.md) |  | [optional] 
**Fields** | [**FieldDetailsDto[]**](FieldDetailsDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvisioningPolicy = Initialize-Tm.V2024ProvisioningPolicy  -Name example provisioning policy for inactive identities `
 -Description this provisioning policy creates access based on an identity going inactive `
 -UsageType null `
 -Fields null
```

- Convert the resource to JSON
```powershell
$ProvisioningPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

