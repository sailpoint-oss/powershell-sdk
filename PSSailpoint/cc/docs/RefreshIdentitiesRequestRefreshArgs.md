# RefreshIdentitiesRequestRefreshArgs
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CorrelateEntitlements** | **Boolean** | This will refresh entitlement, role, and access profile calculations. | [optional] 
**PromoteAttributes** | **Boolean** | This will calculate identity attributes. | [optional] 
**RefreshManagerStatus** | **Boolean** | This recalculates manager correlation and manager status. Note: This is computationally expensive to run.  | [optional] 
**SynchronizeAttributes** | **Boolean** | Enables attribute synchronization. | [optional] 
**PruneIdentities** | **Boolean** | Option that will enable deletion of an identity objects if there are no account objects. Note: This is not typically used in IdentityNow, except by guidance from SailPoint.  | [optional] 
**Provision** | **Boolean** | Enables provisioning of role assignments with entitlements that are not currently fulfilled. | [optional] 

## Examples

- Prepare the resource
```powershell
$RefreshIdentitiesRequestRefreshArgs = Initialize-CCRefreshIdentitiesRequestRefreshArgs  -CorrelateEntitlements true `
 -PromoteAttributes true `
 -RefreshManagerStatus false `
 -SynchronizeAttributes false `
 -PruneIdentities false `
 -Provision false
```

- Convert the resource to JSON
```powershell
$RefreshIdentitiesRequestRefreshArgs | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

