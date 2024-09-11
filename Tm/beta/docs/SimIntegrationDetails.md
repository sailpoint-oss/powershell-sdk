# SimIntegrationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the Object | [optional] [readonly] 
**Name** | **String** | Name of the Object | 
**Created** | **System.DateTime** | Creation date of the Object | [optional] [readonly] 
**Modified** | **System.DateTime** | Last modification date of the Object | [optional] [readonly] 
**Description** | **String** | The description of the integration | [optional] 
**Type** | **String** | The integration type | [optional] 
**Attributes** | [**SystemCollectionsHashtable**](.md) | The attributes map containing the credentials used to configure the integration. | [optional] 
**Sources** | **String[]** | The list of sources (managed resources) | [optional] 
**Cluster** | **String** | The cluster/proxy | [optional] 
**StatusMap** | [**SystemCollectionsHashtable**](.md) | Custom mapping between the integration result and the provisioning result | [optional] 
**Request** | [**SystemCollectionsHashtable**](.md) | Request data to customize desc and body of the created ticket | [optional] 
**BeforeProvisioningRule** | [**SimIntegrationDetailsAllOfBeforeProvisioningRule**](SimIntegrationDetailsAllOfBeforeProvisioningRule.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SimIntegrationDetails = Initialize-Tm.BetaSimIntegrationDetails  -Id id12345 `
 -Name aName `
 -Created 2023-01-03T21:16:22.432Z `
 -Modified 2023-01-03T21:16:22.432Z `
 -Description Integration description `
 -Type ServiceNow Service Desk `
 -Attributes {&quot;uid&quot;:&quot;Walter White&quot;,&quot;firstname&quot;:&quot;walter&quot;,&quot;cloudStatus&quot;:&quot;UNREGISTERED&quot;,&quot;displayName&quot;:&quot;Walter White&quot;,&quot;identificationNumber&quot;:&quot;942&quot;,&quot;lastSyncDate&quot;:1470348809380,&quot;email&quot;:&quot;walter@gmail.com&quot;,&quot;lastname&quot;:&quot;white&quot;} `
 -Sources [2c9180835d191a86015d28455b4a2329, 2c5680835d191a85765d28455b4a9823] `
 -Cluster xyzzy999 `
 -StatusMap {closed_cancelled&#x3D;Failed, closed_complete&#x3D;Committed, closed_incomplete&#x3D;Failed, closed_rejected&#x3D;Failed, in_process&#x3D;Queued, requested&#x3D;Queued} `
 -Request {description&#x3D;SailPoint Access Request,, req_description&#x3D;The Service Request created by SailPoint ServiceNow Service Integration Module (SIM).,, req_short_description&#x3D;SailPoint New Access Request Created from IdentityNow,, short_description&#x3D;SailPoint Access Request $!plan.arguments.identityRequestId} `
 -BeforeProvisioningRule null
```

- Convert the resource to JSON
```powershell
$SimIntegrationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

