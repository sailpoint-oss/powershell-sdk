# BrandingItemCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | name of branding item | 
**ProductName** | **String** | product name | 
**ActionButtonColor** | **String** | hex value of color for action button | [optional] 
**ActiveLinkColor** | **String** | hex value of color for link | [optional] 
**NavigationColor** | **String** | hex value of color for navigation bar | [optional] 
**EmailFromAddress** | **String** | email from address | [optional] 
**LoginInformationalMessage** | **String** | login information message | [optional] 
**FileStandard** | **System.IO.FileInfo** | png file with logo | [optional] 

## Examples

- Prepare the resource
```powershell
$BrandingItemCreate = Initialize-PSSailpoint.V3BrandingItemCreate  -Name custom-branding-item `
 -ProductName product name `
 -ActionButtonColor 0074D9 `
 -ActiveLinkColor 011E69 `
 -NavigationColor 011E69 `
 -EmailFromAddress no-reply@sailpoint.com `
 -LoginInformationalMessage  `
 -FileStandard \x00\x00\x00\x02
```

- Convert the resource to JSON
```powershell
$BrandingItemCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

