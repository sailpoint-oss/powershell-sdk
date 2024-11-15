# Tag
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Tag id | [readonly] 
**Name** | **String** | Name of the tag. | 
**Created** | **System.DateTime** | Date the tag was created. | [readonly] 
**Modified** | **System.DateTime** | Date the tag was last modified. | [readonly] 
**TagCategoryRefs** | [**TagTagCategoryRefsInner[]**](TagTagCategoryRefsInner.md) |  | [readonly] 

## Examples

- Prepare the resource
```powershell
$Tag = Initialize-PSSailpoint.BetaTag  -Id 449ecdc0-d4ff-4341-acf6-92f6f7ce604f `
 -Name PCI `
 -Created 2022-05-04T14:48:49Z `
 -Modified 2022-07-14T16:31:11Z `
 -TagCategoryRefs null
```

- Convert the resource to JSON
```powershell
$Tag | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

