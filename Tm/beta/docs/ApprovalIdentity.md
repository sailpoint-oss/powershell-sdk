# ApprovalIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The identity ID | [optional] 
**Type** | **String** | Indication of what group the identity belongs to. Ie, IDENTITY, GOVERNANCE_GROUP, etc | [optional] 
**Name** | **String** | Name of the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalIdentity = Initialize-Tm.BetaApprovalIdentity  -Id 85d173e7d57e496569df763231d6deb6a `
 -Type IDENTITY `
 -Name John Doe
```

- Convert the resource to JSON
```powershell
$ApprovalIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

