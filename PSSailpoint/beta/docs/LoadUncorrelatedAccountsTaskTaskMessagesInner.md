# LoadUncorrelatedAccountsTaskTaskMessagesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of the message. | [optional] 
**VarError** | **Boolean** | Flag whether message is an error. | [optional] [default to $false]
**Warning** | **Boolean** | Flag whether message is a warning. | [optional] [default to $false]
**Key** | **String** | Message string identifier. | [optional] 
**LocalizedText** | **String** | Message context with the locale based language. | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadUncorrelatedAccountsTaskTaskMessagesInner = Initialize-PSSailpoint.BetaLoadUncorrelatedAccountsTaskTaskMessagesInner  -Type WARN `
 -VarError false `
 -Warning true `
 -Key This correlation failed because the currently running correlation must complete before the next one can start. `
 -LocalizedText This correlation failed because the currently running correlation must complete before the next one can start.
```

- Convert the resource to JSON
```powershell
$LoadUncorrelatedAccountsTaskTaskMessagesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

