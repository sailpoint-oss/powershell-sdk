# PasswordDigitTokenReset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** | The uid of the user requested for digit token | 
**Length** | **Int32** | The length of digit token. It should be from 6 to 18, inclusive. The default value is 6. | [optional] 
**DurationMinutes** | **Int32** | The time to live for the digit token in minutes. The default value is 5 minutes. | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordDigitTokenReset = Initialize-Tm.V2024PasswordDigitTokenReset  -UserId Abby.Smith `
 -Length 8 `
 -DurationMinutes 5
```

- Convert the resource to JSON
```powershell
$PasswordDigitTokenReset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

