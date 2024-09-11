# SedAssignee
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of assignment When value is PERSONA, the value MUST be SOURCE_OWNER or ENTITLEMENT_OWNER IDENTITY SED_ASSIGNEE_IDENTITY_TYPE GROUP SED_ASSIGNEE_GROUP_TYPE SOURCE_OWNER SED_ASSIGNEE_SOURCE_OWNER_TYPE ENTITLEMENT_OWNER SED_ASSIGNEE_ENTITLEMENT_OWNER_TYPE | 
**Value** | **String** | Identity or Group identifier Empty when using source/entitlement owner personas | [optional] 

## Examples

- Prepare the resource
```powershell
$SedAssignee = Initialize-Tm.V2024SedAssignee  -Type SOURCE_OWNER `
 -Value 016629d1-1d25-463f-97f3-c6686846650
```

- Convert the resource to JSON
```powershell
$SedAssignee | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

