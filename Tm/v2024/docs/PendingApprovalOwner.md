# PendingApprovalOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Access item owner&#39;s DTO type. | [optional] 
**Id** | **String** | Access item owner&#39;s identity ID. | [optional] 
**Name** | **String** | Access item owner&#39;s human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$PendingApprovalOwner = Initialize-Tm.V2024PendingApprovalOwner  -Type IDENTITY `
 -Id 2c9180a46faadee4016fb4e018c20639 `
 -Name Support
```

- Convert the resource to JSON
```powershell
$PendingApprovalOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

