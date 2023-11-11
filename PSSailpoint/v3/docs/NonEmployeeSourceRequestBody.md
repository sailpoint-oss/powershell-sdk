# NonEmployeeSourceRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of non-employee source. | 
**Description** | **String** | Description of non-employee source. | 
**Owner** | [**NonEmployeeIdnUserRequest**](NonEmployeeIdnUserRequest.md) |  | 
**ManagementWorkgroup** | **String** | The ID for the management workgroup that contains source sub-admins | [optional] 
**Approvers** | [**NonEmployeeIdnUserRequest[]**](NonEmployeeIdnUserRequest.md) | List of approvers. | [optional] 
**AccountManagers** | [**NonEmployeeIdnUserRequest[]**](NonEmployeeIdnUserRequest.md) | List of account managers. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeSourceRequestBody = Initialize-NonEmployeeSourceRequestBody  -Name Retail `
 -Description Source description `
 -Owner null `
 -ManagementWorkgroup 123299 `
 -Approvers null `
 -AccountManagers null
```

- Convert the resource to JSON
```powershell
$NonEmployeeSourceRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

