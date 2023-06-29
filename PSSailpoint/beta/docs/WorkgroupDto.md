# WorkgroupDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Owner** | [**Owner**](Owner.md) |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Description** | **String** | Description of the Governance Group | [optional] 
**MemberCount** | **Int64** | Number of members in the Governance Group. | [optional] 
**ConnectionCount** | **Int64** | Number of connections in the Governance Group. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkgroupDto = Initialize-PSSailpointBetaWorkgroupDto  -Owner null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Description Description of the Governance Group `
 -MemberCount 1641498673000 `
 -ConnectionCount 1641498673000
```

- Convert the resource to JSON
```powershell
$WorkgroupDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

