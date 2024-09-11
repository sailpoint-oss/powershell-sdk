# CampaignFilterDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Campaign filter name. | 
**Description** | **String** | Campaign filter description. | [optional] 
**Owner** | **String** | Owner of the filter. This field automatically populates at creation time with the current user. | 
**Mode** | [**SystemCollectionsHashtable**](.md) | Mode/type of filter, either the INCLUSION or EXCLUSION type. The INCLUSION type includes the data in generated campaigns  as per specified in the criteria, whereas the EXCLUSION type excludes the data in generated campaigns as per specified in criteria. | 
**CriteriaList** | [**CampaignFilterDetailsCriteriaListInner[]**](CampaignFilterDetailsCriteriaListInner.md) | List of criteria. | [optional] 

## Examples

- Prepare the resource
```powershell
$CampaignFilterDetails = Initialize-Tm.V3CampaignFilterDetails  -Name Identity Attribute Campaign Filter `
 -Description Campaign filter to certify data based on an identity attribute&#39;s specified property. `
 -Owner SailPoint Support `
 -Mode INCLUSION `
 -CriteriaList [{type&#x3D;IDENTITY_ATTRIBUTE, property&#x3D;displayName, value&#x3D;support, operation&#x3D;CONTAINS, negateResult&#x3D;false, shortCircuit&#x3D;false, recordChildMatches&#x3D;false, id&#x3D;null, suppressMatchedItems&#x3D;false, children&#x3D;null}]
```

- Convert the resource to JSON
```powershell
$CampaignFilterDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

