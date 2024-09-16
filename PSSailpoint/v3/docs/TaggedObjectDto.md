# TaggedObjectDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type | [optional] 
**Id** | **String** | ID of the object this reference applies to | [optional] 
**Name** | **String** | Human-readable display name of the object this reference applies to | [optional] 

## Examples

- Prepare the resource
```powershell
$TaggedObjectDto = Initialize-PSSailpoint.V3TaggedObjectDto  -Type IDENTITY `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$TaggedObjectDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

