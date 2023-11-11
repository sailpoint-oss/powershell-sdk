# GetOrgSettings200ResponseApprovalConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DaysTillEscalation** | **Int32** |  | 
**DaysBetweenReminders** | **Int32** |  | 
**MaxReminders** | **Int32** |  | 
**FallbackApprover** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GetOrgSettings200ResponseApprovalConfig = Initialize-V2GetOrgSettings200ResponseApprovalConfig  -DaysTillEscalation null `
 -DaysBetweenReminders null `
 -MaxReminders null `
 -FallbackApprover null
```

- Convert the resource to JSON
```powershell
$GetOrgSettings200ResponseApprovalConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

