# Entitlement1ManuallyUpdatedFields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DISPLAYNAME** | **Boolean** | True if the entitlements name was updated manually via entitlement import csv or patch endpoint.  False means that property value has not been change after first entitlement aggregation. Field refers to [Entitlement response schema](https://developer.sailpoint.com/idn/api/beta/get-entitlement) &gt; &#x60;name&#x60; property. | [optional] [default to $false]
**DESCRIPTION** | **Boolean** | True if the entitlement description was updated manually via entitlement import csv or patch endpoint.  False means that property value has not been change after first entitlement aggregation. Field refers to [Entitlement response schema](https://developer.sailpoint.com/idn/api/beta/get-entitlement) &gt; &#x60;description&#x60; property. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$Entitlement1ManuallyUpdatedFields = Initialize-PSSailpoint.V2024Entitlement1ManuallyUpdatedFields  -DISPLAYNAME true `
 -DESCRIPTION true
```

- Convert the resource to JSON
```powershell
$Entitlement1ManuallyUpdatedFields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

