# NameType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | the actor or target name | [optional] 
**Type** | [**DtoType**](DtoType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NameType = Initialize-NameType  -Name John Doe `
 -Type null
```

- Convert the resource to JSON
```powershell
$NameType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

