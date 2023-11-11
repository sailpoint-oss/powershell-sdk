# Invocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Invocation ID | [optional] 
**TriggerId** | **String** | Trigger ID | [optional] 
**Secret** | **String** | Unique invocation secret. | [optional] 
**ContentJson** | [**SystemCollectionsHashtable**](.md) | JSON map of invocation metadata. | [optional] 

## Examples

- Prepare the resource
```powershell
$Invocation = Initialize-BetaInvocation  -Id 0f11f2a4-7c94-4bf3-a2bd-742580fe3bde `
 -TriggerId idn:access-requested `
 -Secret 0f979022-08be-44f2-b6f9-7393ec73ed9b `
 -ContentJson {workflowId&#x3D;1234}
```

- Convert the resource to JSON
```powershell
$Invocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

