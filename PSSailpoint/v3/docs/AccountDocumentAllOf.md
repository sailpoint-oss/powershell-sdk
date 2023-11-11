# AccountDocumentAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Modified** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | a map or dictionary of key/value pairs | [optional] 
**Identity** | [**DisplayReference**](DisplayReference.md) |  | [optional] 
**Access** | [**AccessProfileEntitlement[]**](AccessProfileEntitlement.md) |  | [optional] 
**EntitlementCount** | **Int32** | The number of entitlements assigned to the account | [optional] 
**Uncorrelated** | **Boolean** | Indicates if the account is not correlated to an identity | [optional] 
**Tags** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountDocumentAllOf = Initialize-AccountDocumentAllOf  -Modified 2018-06-25T20:22:28.104Z `
 -Attributes {firstName&#x3D;John, lastName&#x3D;Doe, displayName&#x3D;John.Doe} `
 -Identity null `
 -Access null `
 -EntitlementCount 2 `
 -Uncorrelated false `
 -Tags [TAG_1, TAG_2]
```

- Convert the resource to JSON
```powershell
$AccountDocumentAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

