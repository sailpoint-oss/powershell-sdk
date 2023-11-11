# IdentityAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The technical name of the identity attribute | [optional] 
**DisplayName** | **String** | The business-friendly name of the identity attribute | [optional] 
**Standard** | **Boolean** | Shows if the attribute is &#39;standard&#39; or default | [optional] [default to $false]
**Type** | **String** | The type of the identity attribute | [optional] 
**Multi** | **Boolean** | Shows if the identity attribute is multi-valued | [optional] [default to $false]
**Searchable** | **Boolean** | Shows if the identity attribute is searchable | [optional] [default to $false]
**System** | **Boolean** | Shows this is &#39;system&#39; identity attribute that does not have a source and is not configurable. | [optional] [default to $false]
**Sources** | [**Source1[]**](Source1.md) | List of sources for an attribute, this specifies how the value of the rule is derived | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttribute = Initialize-BetaIdentityAttribute  -Name uid `
 -DisplayName IdentityNow Username `
 -Standard true `
 -Type string `
 -Multi false `
 -Searchable true `
 -System false `
 -Sources null
```

- Convert the resource to JSON
```powershell
$IdentityAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

