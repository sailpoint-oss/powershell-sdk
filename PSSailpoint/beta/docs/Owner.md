# Owner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DtoType**](DtoType.md) |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable name of the owner | [optional] 
**DisplayName** | **String** | Human-readable display name of the owner | [optional] 
**EmailAddress** | **String** | Email ID of the owner | [optional] 

## Examples

- Prepare the resource
```powershell
$Owner = Initialize-PSSailpointBetaOwner  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson `
 -DisplayName William `
 -EmailAddress william@sailpoint.com
```

- Convert the resource to JSON
```powershell
$Owner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

