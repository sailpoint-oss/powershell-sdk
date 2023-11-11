# RoleInsight
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Insight id | [optional] 
**NumberOfUpdates** | **Int32** | Total number of updates for this role | [optional] 
**CreatedDate** | **System.DateTime** | The date-time insights were last created for this role. | [optional] 
**Role** | [**RoleInsightsRole**](RoleInsightsRole.md) |  | [optional] 
**Insight** | [**RoleInsightsInsight**](RoleInsightsInsight.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleInsight = Initialize-BetaRoleInsight  -Id 1467e61e-f284-439c-ba2d-c6cc11cf0941 `
 -NumberOfUpdates 5 `
 -CreatedDate 2020-05-19T13:49:37.385Z `
 -Role null `
 -Insight null
```

- Convert the resource to JSON
```powershell
$RoleInsight | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

