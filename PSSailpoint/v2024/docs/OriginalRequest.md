# OriginalRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | Account ID. | [optional] 
**AttributeRequests** | [**AttributeRequest[]**](AttributeRequest.md) | Attribute changes requested for account. | [optional] 
**Op** | **String** | Operation used. | [optional] 
**Source** | [**AccountSource**](AccountSource.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OriginalRequest = Initialize-PSSailpointV2024OriginalRequest  -AccountId CN&#x3D;Abby Smith,OU&#x3D;Austin,OU&#x3D;Americas,OU&#x3D;Demo,DC&#x3D;seri,DC&#x3D;acme,DC&#x3D;com `
 -AttributeRequests null `
 -Op add `
 -Source null
```

- Convert the resource to JSON
```powershell
$OriginalRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

