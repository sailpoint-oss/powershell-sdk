# AccessProfileUpdateItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Identifier of Access Profile in bulk update request. | 
**Requestable** | **Boolean** | Access Profile requestable or not. | 
**Status** | **String** |  The HTTP response status code returned for an individual Access Profile that is requested for update during a bulk update operation.  &gt; 201   - Access profile is updated successfully.  &gt; 404   - Access profile not found.  | 
**Description** | **String** | Human readable status description and containing additional context information about success or failures etc.  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileUpdateItem = Initialize-Tm.BetaAccessProfileUpdateItem  -Id 2c7180a46faadee4016fb4e018c20642 `
 -Requestable false `
 -Status 201 `
 -Description 
&gt; Access profile is updated successfully.

&gt; Referenced Access profile with Id &quot;2c7180a46faadee4016fb4e018c20642&quot; was not found.

```

- Convert the resource to JSON
```powershell
$AccessProfileUpdateItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

