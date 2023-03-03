# Reviewer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**SystemCollectionsHashtable**](.md) | The type of object that the reviewer is. | 
**Email** | **String** | The email of the reviewing identity. Only applicable to &#x60;IDENTITY&#x60; | [optional] 
**Id** | **String** | ID of the object to which this reference applies | 
**Name** | **String** | Human-readable display name of the object to which this reference applies | 

## Examples

- Prepare the resource
```powershell
$Reviewer = Initialize-PSSailpointBetaReviewer  -Type IDENTITY `
 -Email reviewer@test.com `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$Reviewer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

