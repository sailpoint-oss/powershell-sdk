# AccessRequestResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequesterId** | **String** | the requester Id | [optional] 
**RequesterName** | **String** | the requesterName | [optional] 
**Items** | [**AccessRequestItemResponse[]**](AccessRequestItemResponse.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestResponse = Initialize-BetaAccessRequestResponse  -RequesterId 2c91808a77ff216301782327a50f09bf `
 -RequesterName Bing C `
 -Items [{operation&#x3D;Add, accessItemType&#x3D;role, name&#x3D;Role-1, decision&#x3D;APPROVED, description&#x3D;The role descrition, sourceId&#x3D;8a80828f643d484f01643e14202e206f, sourceName&#x3D;Source1, approvalInfos&#x3D;[{name&#x3D;John Snow, id&#x3D;8a80828f643d484f01643e14202e2000, status&#x3D;Approved}]}]
```

- Convert the resource to JSON
```powershell
$AccessRequestResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

