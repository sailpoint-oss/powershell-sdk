# EntitlementDocumentAllOfSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of entitlement&#39;s source. | [optional] 
**Name** | **String** | Display name of entitlement&#39;s source. | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementDocumentAllOfSource = Initialize-Tm.V3EntitlementDocumentAllOfSource  -Id 2c91808b6e9e6fb8016eec1a2b6f7b5f `
 -Name ODS-HR-Employees
```

- Convert the resource to JSON
```powershell
$EntitlementDocumentAllOfSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

