# Segment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The segment&#39;s ID. | [optional] 
**Name** | **String** | The segment&#39;s business name. | [optional] 
**Created** | **System.DateTime** | The time when the segment is created. | [optional] 
**Modified** | **System.DateTime** | The time when the segment is modified. | [optional] 
**Description** | **String** | The segment&#39;s optional description. | [optional] 
**Owner** | [**OwnerReferenceSegments**](OwnerReferenceSegments.md) |  | [optional] 
**VisibilityCriteria** | [**VisibilityCriteria**](VisibilityCriteria.md) |  | [optional] 
**Active** | **Boolean** | This boolean indicates whether the segment is currently active. Inactive segments have no effect. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$Segment = Initialize-Segment  -Id 0f11f2a4-7c94-4bf3-a2bd-742580fe3bde `
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

