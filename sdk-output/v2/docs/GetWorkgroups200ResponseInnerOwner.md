# GetWorkgroups200ResponseInnerOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** |  | [optional] 
**EmailAddress** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetWorkgroups200ResponseInnerOwner = Initialize-PSSailpointV2GetWorkgroups200ResponseInnerOwner  -DisplayName Philip Ellis `
 -EmailAddress philip.ellis@sailpoint.com `
 -Id 2c9180897d2cb80b017d39ccb26c1804 `
 -Name philip.ellis
```

- Convert the resource to JSON
```powershell
$GetWorkgroups200ResponseInnerOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

