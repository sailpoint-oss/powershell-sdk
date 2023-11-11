# CampaignFilterDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the campaign filter | [optional] 
**Name** | **String** | This is campaign filter&#39;s name. | 
**Description** | **String** | This is campaign filter&#39;s description. | 
**Owner** | **String** | The owner of this filter. This field is automatically populated at creation time with the current user. | 
**Mode** | [**SystemCollectionsHashtable**](.md) | The mode/type of Filter, where it is of INCLUSION or EXCLUSION type. INCLUSION type will include the data in generated campaign  as per specified in criteria, whereas EXCLUSION type will exclude the the data in generated campaign as per specified in criteria. | 
**CriteriaList** | [**CampaignFilterDetailsCriteriaListInner[]**](CampaignFilterDetailsCriteriaListInner.md) | List of criteria. | [optional] 

## Examples

- Prepare the resource
```powershell
$CampaignFilterDetails = Initialize-CampaignFilterDetails  -Id e9f9a1397b842fd5a65842087040d3ac `
 -Name Identity Attribute Campaign Filter `
 -Description Campaign filter to certify data based on specified property of Identity Attribute. `
 -Owner SailPoint Support `
 -Mode INCLUSION `
 -CriteriaList [{type&#x3D;IDENTITY_ATTRIBUTE, property&#x3D;displayName, value&#x3D;support, operation&#x3D;CONTAINS, negateResult&#x3D;false, shortCircuit&#x3D;false, recordChildMatches&#x3D;false, id&#x3D;null, suppressMatchedItems&#x3D;false, children&#x3D;null}]
```

- Convert the resource to JSON
```powershell
$CampaignFilterDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

