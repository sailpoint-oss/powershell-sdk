# CommonAccessItemAccess
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Common access ID | [optional] 
**Type** | [**CommonAccessType**](CommonAccessType.md) |  | [optional] 
**Name** | **String** | Common access name | [optional] 
**Description** | **String** | Common access description | [optional] 
**OwnerName** | **String** | Common access owner name | [optional] 
**OwnerId** | **String** | Common access owner ID | [optional] 

## Examples

- Prepare the resource
```powershell
$CommonAccessItemAccess = Initialize-BetaCommonAccessItemAccess  -Id null `
 -Type null `
 -Name null `
 -Description null `
 -OwnerName null `
 -OwnerId null
```

- Convert the resource to JSON
```powershell
$CommonAccessItemAccess | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

