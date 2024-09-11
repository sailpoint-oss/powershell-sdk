# Delete202Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of object being referenced. | [optional] 
**Id** | **String** | Task result ID. | [optional] 
**Name** | **String** | Task result&#39;s human-readable display name (this should be null/empty). | [optional] 

## Examples

- Prepare the resource
```powershell
$Delete202Response = Initialize-Tm.BetaDelete202Response  -Type TASK_RESULT `
 -Id 2c91808779ecf55b0179f720942f181a `
 -Name null
```

- Convert the resource to JSON
```powershell
$Delete202Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

