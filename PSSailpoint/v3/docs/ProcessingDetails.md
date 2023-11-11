# ProcessingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Stage** | **String** |  | [optional] 
**RetryCount** | **Int32** |  | [optional] 
**VarStackTrace** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProcessingDetails = Initialize-ProcessingDetails  -Date 2018-06-25T20:22:28.104Z `
 -Stage In Process `
 -RetryCount 0 `
 -VarStackTrace &lt;stack trace&gt; `
 -Message &lt;message&gt;
```

- Convert the resource to JSON
```powershell
$ProcessingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

