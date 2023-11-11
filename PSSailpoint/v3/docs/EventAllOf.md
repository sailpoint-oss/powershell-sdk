# EventAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Synced** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Action** | **String** | The action that was performed | [optional] 
**Type** | **String** | The type of event | [optional] 
**Actor** | [**NameType**](NameType.md) |  | [optional] 
**Target** | [**NameType**](NameType.md) |  | [optional] 
**Stack** | **String** |  | [optional] 
**TrackingNumber** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**Details** | **String** |  | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) |  | [optional] 
**Objects** | **String[]** |  | [optional] 
**Operation** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**TechnicalName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EventAllOf = Initialize-EventAllOf  -Created 2018-06-25T20:22:28.104Z `
 -Synced 2018-06-25T20:22:28.104Z `
 -Action update `
 -Type SYSTEM_CONFIG `
 -Actor null `
 -Target null `
 -Stack tpe `
 -TrackingNumber 63f891e0735f4cc8bf1968144a1e7440 `
 -IpAddress 52.52.97.85 `
 -Details 73b65dfbed1842548c207432a18c84b0 `
 -Attributes {pod&#x3D;stg03-useast1, org&#x3D;acme, sourceName&#x3D;SailPoint} `
 -Objects null `
 -Operation REQUEST `
 -Status PASSED `
 -TechnicalName AUTHENTICATION_REQUEST_PASSED
```

- Convert the resource to JSON
```powershell
$EventAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

