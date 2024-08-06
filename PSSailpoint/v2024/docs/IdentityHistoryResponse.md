# IdentityHistoryResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the identity ID | [optional] 
**DisplayName** | **String** | the display name of the identity | [optional] 
**Snapshot** | **String** | the date when the identity record was created | [optional] 
**DeletedDate** | **String** | the date when the identity was deleted | [optional] 
**AccessItemCount** | **System.Collections.Hashtable** | A map containing the count of each access item | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | A map containing the identity attributes | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityHistoryResponse = Initialize-PSSailpointV2024IdentityHistoryResponse  -Id bc693f07e7b645539626c25954c58554 `
 -DisplayName Adam Zampa `
 -Snapshot 2007-03-01T13:00:00.000Z `
 -DeletedDate 2007-03-01T13:00:00.000Z `
 -AccessItemCount {app&#x3D;0, role&#x3D;2, entitlement&#x3D;4, accessProfile&#x3D;3, account&#x3D;1} `
 -Attributes {jobTitle&#x3D;HR Manager, location&#x3D;NYC, firstname&#x3D;Adam, lastname&#x3D;Zampa, department&#x3D;HR}
```

- Convert the resource to JSON
```powershell
$IdentityHistoryResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

