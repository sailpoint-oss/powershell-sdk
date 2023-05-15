# ViolationContextPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**SystemCollectionsHashtable**](.md) | The type of object that is referenced | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ViolationContextPolicy = Initialize-PSSailpointViolationContextPolicy  -Type ENTITLEMENT `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name A very cool policy name
```

- Convert the resource to JSON
```powershell
$ViolationContextPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

