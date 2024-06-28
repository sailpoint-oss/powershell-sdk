# SessionConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxIdleTime** | **Int32** | The maximum time in minutes a session can be idle. | [optional] 
**RememberMe** | **Boolean** | Denotes if &#39;remember me&#39; is enabled. | [optional] [default to $false]
**MaxSessionTime** | **Int32** | The maximum allowable session time in minutes. | [optional] 

## Examples

- Prepare the resource
```powershell
$SessionConfiguration = Initialize-PSSailpointSessionConfiguration  -MaxIdleTime 15 `
 -RememberMe true `
 -MaxSessionTime 45
```

- Convert the resource to JSON
```powershell
$SessionConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

