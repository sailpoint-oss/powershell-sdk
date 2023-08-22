# RoleMiningSessionScopingMethod
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **String** | The scoping method used in the current role mining session. Can be one of these states - MANUAL|AUTO_RM | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningSessionScopingMethod = Initialize-PSSailpointBetaRoleMiningSessionScopingMethod  -State MANUAL
```

- Convert the resource to JSON
```powershell
$RoleMiningSessionScopingMethod | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

