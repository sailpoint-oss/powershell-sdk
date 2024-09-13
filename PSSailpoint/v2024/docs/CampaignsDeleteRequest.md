# CampaignsDeleteRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **String[]** | The ids of the campaigns to delete | [optional] 

## Examples

- Prepare the resource
```powershell
$CampaignsDeleteRequest = Initialize-PSSailpoint.V2024CampaignsDeleteRequest  -Ids [2c9180887335cee10173490db1776c26, 2c9180836a712436016a7125a90c0021]
```

- Convert the resource to JSON
```powershell
$CampaignsDeleteRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

