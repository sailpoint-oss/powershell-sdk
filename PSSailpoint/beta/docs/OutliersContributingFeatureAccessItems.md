# OutliersContributingFeatureAccessItems
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the access item | [optional] 
**DisplayName** | **String** | the display name of the access item | [optional] 
**Description** | **String** | Description of the access item. | [optional] 
**AccessType** | **String** | The type of the access item. | [optional] 
**SourceName** | **String** | the associated source name if it exists | [optional] 
**ExtremelyRare** | **Boolean** | rarest access | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$OutliersContributingFeatureAccessItems = Initialize-BetaOutliersContributingFeatureAccessItems  -Id 2c938083633d259901633d2623ec0375 `
 -DisplayName Applied Research Access `
 -Description Access to research information, lab results, and schematics `
 -AccessType ENTITLEMENT `
 -SourceName appName `
 -ExtremelyRare true
```

- Convert the resource to JSON
```powershell
$OutliersContributingFeatureAccessItems | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

