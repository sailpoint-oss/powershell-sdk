# ApprovalDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comments** | [**SystemCollectionsHashtable**](.md) | Object representation of a comment on the approval | [optional] 
**ApprovedBy** | [**ApprovalIdentity[]**](ApprovalIdentity.md) | An array of identities who have approved the approval | [optional] 
**RejectedBy** | [**ApprovalIdentity[]**](ApprovalIdentity.md) | An array of identities who have rejected the approval | [optional] 
**ReassignFrom** | [**ApprovalIdentity**](ApprovalIdentity.md) |  | [optional] 
**ReassignTo** | [**ApprovalIdentity**](ApprovalIdentity.md) |  | [optional] 
**AdditionalAttributes** | [**SystemCollectionsHashtable**](.md) | Any additional attributes that the approval request may need | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalDto = Initialize-Tm.V2024ApprovalDto  -Comments {author&#x3D;85d173e7d57e496569df763231d6deb6a, comment&#x3D;Looks good, createdDate&#x3D;2023-04-12T23:20:50.52Z} `
 -ApprovedBy null `
 -RejectedBy null `
 -ReassignFrom null `
 -ReassignTo null `
 -AdditionalAttributes {any&#x3D;any, additional&#x3D;attributes}
```

- Convert the resource to JSON
```powershell
$ApprovalDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

