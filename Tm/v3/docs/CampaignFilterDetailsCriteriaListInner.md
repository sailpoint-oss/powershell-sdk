# CampaignFilterDetailsCriteriaListInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**CriteriaType**](CriteriaType.md) |  | 
**Operation** | [**Operation**](Operation.md) |  | 
**Property** | **String** | Specified key from the type of criteria. | 
**Value** | **String** | Value for the specified key from the type of criteria. | 

## Examples

- Prepare the resource
```powershell
$CampaignFilterDetailsCriteriaListInner = Initialize-Tm.V3CampaignFilterDetailsCriteriaListInner  -Type null `
 -Operation null `
 -Property displayName `
 -Value Allie
```

- Convert the resource to JSON
```powershell
$CampaignFilterDetailsCriteriaListInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

