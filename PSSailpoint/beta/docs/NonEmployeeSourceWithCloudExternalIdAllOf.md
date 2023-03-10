# NonEmployeeSourceWithCloudExternalIdAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CloudExternalId** | **String** | Legacy ID used for sources from the V1 API. This attribute will be removed from a future version of the API and will not be considered a breaking change. No clients should rely on this ID always being present. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeSourceWithCloudExternalIdAllOf = Initialize-PSSailpointBetaNonEmployeeSourceWithCloudExternalIdAllOf  -CloudExternalId 99999
```

- Convert the resource to JSON
```powershell
$NonEmployeeSourceWithCloudExternalIdAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

