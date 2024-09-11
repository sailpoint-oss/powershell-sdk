# LoadAccountsTaskTaskMessagesInner
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
$LoadAccountsTaskTaskMessagesInner = Initialize-Tm.V2024LoadAccountsTaskTaskMessagesInner  -Type WARN `
 -VarError false `
 -Warning true `
 -Key This aggregation failed because the currently running aggregation must complete before the next one can start. `
 -LocalizedText This aggregation failed because the currently running aggregation must complete before the next one can start.
```

- Convert the resource to JSON
```powershell
$LoadAccountsTaskTaskMessagesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

