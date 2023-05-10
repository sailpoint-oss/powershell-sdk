# Segment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the Segment. | [optional] 
**Name** | **String** | Segment Business Name | [optional] 
**Created** | **System.DateTime** | The time when this Segment is created | [optional] 
**Modified** | **System.DateTime** | The time when this Segment is modified | [optional] 
**Description** | **String** | Optional description of the Segment | [optional] 
**Owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**VisibilityCriteria** | [**VisibilityCriteria**](VisibilityCriteria.md) |  | [optional] 
**Active** | **Boolean** | Whether the Segment is currently active. Inactive segments have no effect. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$Segment = Initialize-PSSailpointSegment  -Id 0f11f2a4-7c94-4bf3-a2bd-742580fe3bde `
 -Name segment-xyz `
 -Created 2020-01-01T00:00Z `
 -Modified 2020-01-01T00:00Z `
 -Description This segment represents xyz `
 -Owner null `
 -VisibilityCriteria null `
 -Active true
```

- Convert the resource to JSON
```powershell
$Segment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

