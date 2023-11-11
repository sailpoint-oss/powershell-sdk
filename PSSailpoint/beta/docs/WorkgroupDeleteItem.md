# WorkgroupDeleteItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the Governance Group. | 
**Status** | **String** |  The HTTP response status code returned for an individual Governance Group that is requested for deletion during a bulk delete operation.  &gt; 204   -  Governance Group deleted successfully.  &gt; 409   - Governance Group is in use,hence can not be deleted.  &gt; 404   - Governance Group not found.  | 
**Description** | **String** | Human readable status description and containing additional context information about success or failures etc.  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkgroupDeleteItem = Initialize-BetaWorkgroupDeleteItem  -Id 464ae7bf791e49fdb74606a2e4a89635 `
 -Status 204 `
 -Description 
&gt; Governance Group deleted successfully.

&gt; Unable to delete Governance Group f80bba83-98c4-4ec2-81c8-373c00e9663b because it is in use.

&gt; Referenced Governance Group 2b711763-ed35-42a2-a80c-8f1ce0dc4a7f was not found.

```

- Convert the resource to JSON
```powershell
$WorkgroupDeleteItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

