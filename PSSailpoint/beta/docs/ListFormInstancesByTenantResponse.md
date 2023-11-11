# ListFormInstancesByTenantResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int64** | Count number of Results | [optional] 
**Results** | [**FormInstanceResponse[]**](FormInstanceResponse.md) | Results holds a list of FormInstanceResponse items | [optional] 

## Examples

- Prepare the resource
```powershell
$ListFormInstancesByTenantResponse = Initialize-BetaListFormInstancesByTenantResponse  -Count 1 `
 -Results null
```

- Convert the resource to JSON
```powershell
$ListFormInstancesByTenantResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

