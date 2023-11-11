# WorkgroupDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Owner** | [**OwnerDto**](OwnerDto.md) |  | [optional] 
**Id** | **String** | Governance group ID. | [optional] [readonly] 
**Name** | **String** | Governance group name. | [optional] 
**Description** | **String** | Governance group description. | [optional] 
**MemberCount** | **Int64** | Number of members in the governance group. | [optional] [readonly] 
**ConnectionCount** | **Int64** | Number of connections in the governance group. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$WorkgroupDto = Initialize-BetaWorkgroupDto  -Owner null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name DB Access Governance Group `
 -Description Description of the Governance Group `
 -MemberCount 1641498673000 `
 -ConnectionCount 1641498673000
```

- Convert the resource to JSON
```powershell
$WorkgroupDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

