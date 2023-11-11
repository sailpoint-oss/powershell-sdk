# ListWorkgroupConnections200ResponseInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionType** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**ObjectId** | **String** |  | [optional] 
**ObjectType** | **String** |  | [optional] 
**WorkgroupId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ListWorkgroupConnections200ResponseInner = Initialize-V2ListWorkgroupConnections200ResponseInner  -ConnectionType AccessRequestReviewer `
 -Description null `
 -Name Test Approval Scheme `
 -ObjectId 8c24b31fe23947b28e42691a4a6faaee `
 -ObjectType AccessProfile `
 -WorkgroupId b0c131fa-5133-4efb-9bb2-e22529f44cad
```

- Convert the resource to JSON
```powershell
$ListWorkgroupConnections200ResponseInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

