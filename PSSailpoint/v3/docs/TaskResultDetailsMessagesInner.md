# TaskResultDetailsMessagesInner
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
$TaskResultDetailsMessagesInner = Initialize-TaskResultDetailsMessagesInner  -Type WARN `
 -VarError false `
 -Warning true `
 -Key The following account(s) failed to correlate: A,B,C `
 -LocalizedText The following account(s) failed to correlate: A,B,C
```

- Convert the resource to JSON
```powershell
$TaskResultDetailsMessagesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

