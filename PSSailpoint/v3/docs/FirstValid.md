# FirstValid
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Values** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | An array of attributes to evaluate for existence. | 
**IgnoreErrors** | **Boolean** | a true or false value representing to move on to the next option if an error (like an Null Pointer Exception) were to occur. | [optional] [default to $false]
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$FirstValid = Initialize-FirstValid  -Values [{attributes&#x3D;{sourceName&#x3D;Active Directory, attributeName&#x3D;sAMAccountName}, type&#x3D;accountAttribute}, {attributes&#x3D;{sourceName&#x3D;Okta, attributeName&#x3D;login}, type&#x3D;accountAttribute}, {attributes&#x3D;{sourceName&#x3D;HR Source, attributeName&#x3D;employeeID}, type&#x3D;accountAttribute}] `
 -IgnoreErrors false `
 -RequiresPeriodicRefresh false
```

- Convert the resource to JSON
```powershell
$FirstValid | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

