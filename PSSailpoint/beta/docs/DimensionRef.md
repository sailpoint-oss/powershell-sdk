# DimensionRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of the object to which this reference applies | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$DimensionRef = Initialize-PSSailpoint.BetaDimensionRef  -Type DIMENSION `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name Role 2
```

- Convert the resource to JSON
```powershell
$DimensionRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

