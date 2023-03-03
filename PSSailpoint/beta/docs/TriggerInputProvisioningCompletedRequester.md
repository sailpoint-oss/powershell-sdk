# TriggerInputProvisioningCompletedRequester
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**SystemCollectionsHashtable**](.md) | The type of object that is referenced | 
**Id** | **String** | ID of the object to which this reference applies | 
**Name** | **String** | Human-readable display name of the object to which this reference applies | 

## Examples

- Prepare the resource
```powershell
$TriggerInputProvisioningCompletedRequester = Initialize-PSSailpointBetaTriggerInputProvisioningCompletedRequester  -Type IDENTITY `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$TriggerInputProvisioningCompletedRequester | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

