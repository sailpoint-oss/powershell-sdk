# ModifyWorkgroupMembersRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Add** | **String[]** |  | [optional] 
**Remove** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModifyWorkgroupMembersRequest = Initialize-V2ModifyWorkgroupMembersRequest  -Add null `
 -Remove null
```

- Convert the resource to JSON
```powershell
$ModifyWorkgroupMembersRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

