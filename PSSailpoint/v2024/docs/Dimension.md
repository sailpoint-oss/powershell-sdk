# Dimension
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the Dimension. This field must be left null when creating a dimension, otherwise a 400 Bad Request error will result. | [optional] 
**Name** | **String** | The human-readable display name of the Dimension | 
**Created** | **System.DateTime** | Date the Dimension was created | [optional] [readonly] 
**Modified** | **System.DateTime** | Date the Dimension was last modified. | [optional] [readonly] 
**Description** | **String** | A human-readable description of the Dimension | [optional] 
**Owner** | [**OwnerReference**](OwnerReference.md) |  | 
**AccessProfiles** | [**AccessProfileRef[]**](AccessProfileRef.md) |  | [optional] 
**Entitlements** | [**EntitlementRef[]**](EntitlementRef.md) |  | [optional] 
**Membership** | [**DimensionMembershipSelector**](DimensionMembershipSelector.md) |  | [optional] 
**ParentId** | **String** | The ID of the parent role. This field can be left null when creating a dimension, but if provided, it must match the role ID specified in the path variable of the API call. | [optional] 

## Examples

- Prepare the resource
```powershell
$Dimension = Initialize-PSSailpoint.V2024Dimension  -Id 2c918086749d78830174a1a40e121518 `
 -Name Dimension 2567 `
 -Created 2021-03-01T22:32:58.104Z `
 -Modified 2021-03-02T20:22:28.104Z `
 -Description Urna amet cursus pellentesque nisl orci maximus lorem nisl euismod fusce morbi placerat adipiscing maecenas nisi tristique et metus et lacus sed morbi nunc nisl maximus magna arcu varius sollicitudin elementum enim maecenas nisi id ipsum tempus fusce diam ipsum tortor. `
 -Owner null `
 -AccessProfiles null `
 -Entitlements null `
 -Membership null `
 -ParentId 2c918086749d78830174a1a40e121518
```

- Convert the resource to JSON
```powershell
$Dimension | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
