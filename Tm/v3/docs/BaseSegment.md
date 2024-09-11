# BaseSegment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Segment&#39;s unique ID. | [optional] 
**Name** | **String** | Segment&#39;s display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$BaseSegment = Initialize-Tm.V3BaseSegment  -Id b009b6e3-b56d-41d9-8735-cb532ea0b017 `
 -Name Test Segment
```

- Convert the resource to JSON
```powershell
$BaseSegment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

