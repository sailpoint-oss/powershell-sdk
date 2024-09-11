# KbaQuestion
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | KBA Question Id | 
**Text** | **String** | KBA Question description | 
**HasAnswer** | **Boolean** | Denotes whether the KBA question has an answer configured for any user in the tenant | 
**NumAnswers** | **Int32** | Denotes the number of KBA configurations for this question | 

## Examples

- Prepare the resource
```powershell
$KbaQuestion = Initialize-Tm.BetaKbaQuestion  -Id 143cfd3b-c23f-426b-ae5f-d3db06fa5919 `
 -Text [{&quot;text&quot;:&quot;Nouvelle question MFA -1 ?&quot;,&quot;locale&quot;:&quot;fr&quot;},{&quot;text&quot;:&quot;MFA new question -1 ?&quot;,&quot;locale&quot;:&quot;&quot;}] `
 -HasAnswer true `
 -NumAnswers 5
```

- Convert the resource to JSON
```powershell
$KbaQuestion | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

