# LoadUncorrelatedAccountsTaskTaskAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QpocJobId** | **String** | The id of qpoc job | [optional] 
**TaskStartDelay** | [**SystemCollectionsHashtable**](.md) | the task start delay value | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadUncorrelatedAccountsTaskTaskAttributes = Initialize-PSSailpoint.V2024LoadUncorrelatedAccountsTaskTaskAttributes  -QpocJobId 5d303d46-fc51-48cd-9c6d-4e211e3ab63c `
 -TaskStartDelay 
```

- Convert the resource to JSON
```powershell
$LoadUncorrelatedAccountsTaskTaskAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

