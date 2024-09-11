# TaskResultDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of the job or task underlying in the report processing. It could be a quartz task, QPOC or MENTOS jobs or a refresh/sync task. | [optional] 
**Id** | **String** | Unique task definition identifier. | [optional] 
**ReportType** | [**SystemCollectionsHashtable**](.md) | Use this property to define what report should be processed in the RDE service. | [optional] 
**Description** | **String** | Description of the report purpose and/or contents. | [optional] 
**ParentName** | **String** | Name of the parent task/report if exists. | [optional] 
**Launcher** | **String** | Name of the report processing initiator. | [optional] 
**Created** | **System.DateTime** | Report creation date | [optional] 
**Launched** | **System.DateTime** | Report start date | [optional] 
**Completed** | **System.DateTime** | Report completion date | [optional] 
**CompletionStatus** | **String** | Report completion status. | [optional] 
**Messages** | [**TaskResultDetailsMessagesInner[]**](TaskResultDetailsMessagesInner.md) | List of the messages dedicated to the report.  From task definition perspective here usually should be warnings or errors. | [optional] 
**Returns** | [**TaskResultDetailsReturnsInner[]**](TaskResultDetailsReturnsInner.md) | Task definition results, if necessary. | [optional] 
**Attributes** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | Extra attributes map(dictionary) needed for the report. | [optional] 
**Progress** | **String** | Current report state. | [optional] 

## Examples

- Prepare the resource
```powershell
$TaskResultDetails = Initialize-Tm.V2024TaskResultDetails  -Type MENTOS `
 -Id a248c16fe22222b2bd49615481311111 `
 -ReportType IDENTITIES_DETAILS `
 -Description A detailed view of the identities in the system. `
 -ParentName Audit Report `
 -Launcher cloudadmin `
 -Created null `
 -Launched null `
 -Completed null `
 -CompletionStatus Success `
 -Messages [] `
 -Returns [] `
 -Attributes {org&#x3D;an-org} `
 -Progress Initializing...
```

- Convert the resource to JSON
```powershell
$TaskResultDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

