# AccountAllOfOwnerGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of object being referenced | [optional] 
**Id** | **String** | ID of the governance group | [optional] 
**Name** | **String** | Human-readable display name of the governance group | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountAllOfOwnerGroup = Initialize-Tm.V2024AccountAllOfOwnerGroup  -Type GOVERNANCE_GROUP `
 -Id 8d3e0094e99445de98eef6c75e25jc04 `
 -Name GovGroup AX17Z
```

- Convert the resource to JSON
```powershell
$AccountAllOfOwnerGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

