# AccountRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | Unique ID of the account | [optional] 
**AttributeRequests** | [**AttributeRequest[]**](AttributeRequest.md) |  | [optional] 
**Op** | **String** | The operation that was performed | [optional] 
**ProvisioningTarget** | [**AccountSource**](AccountSource.md) |  | [optional] 
**Result** | [**AccountRequestResult**](AccountRequestResult.md) |  | [optional] 
**Source** | [**AccountSource**](AccountSource.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountRequest = Initialize-AccountRequest  -AccountId John.Doe `
 -AttributeRequests null `
 -Op Modify `
 -ProvisioningTarget null `
 -Result null `
 -Source null
```

- Convert the resource to JSON
```powershell
$AccountRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

