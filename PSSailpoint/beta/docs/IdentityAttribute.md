# IdentityAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Identity attribute&#39;s technical name. | 
**DisplayName** | **String** | Identity attribute&#39;s business-friendly name. | [optional] 
**Standard** | **Boolean** | Indicates whether the attribute is &#39;standard&#39; or &#39;default&#39;. | [optional] [default to $false]
**Type** | **String** | Identity attribute&#39;s type. | [optional] 
**Multi** | **Boolean** | Indicates whether the identity attribute is multi-valued. | [optional] [default to $false]
**Searchable** | **Boolean** | Indicates whether the identity attribute is searchable. | [optional] [default to $false]
**System** | **Boolean** | Indicates whether the identity attribute is &#39;system&#39;, meaning that it doesn&#39;t have a source and isn&#39;t configurable. | [optional] [default to $false]
**Sources** | [**Source1[]**](Source1.md) | Identity attribute&#39;s list of sources - this specifies how the rule&#39;s value is derived. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttribute = Initialize-PSSailpointBetaIdentityAttribute  -Name costCenter `
 -DisplayName Cost Center `
 -Standard false `
 -Type string `
 -Multi false `
 -Searchable false `
 -System false `
 -Sources null
```

- Convert the resource to JSON
```powershell
$IdentityAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

