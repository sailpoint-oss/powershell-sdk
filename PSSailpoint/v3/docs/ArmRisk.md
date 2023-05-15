# ArmRisk
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Risk Name | [optional] [readonly] 
**Description** | **String** | Description | [optional] [readonly] 
**Owners** | **String[]** | List of risk owners&#39; SAP usernames | [optional] [readonly] 
**ExternalReference** | **String** | URL to &quot;&quot;what if&quot;&quot; details in ARM | [optional] [readonly] 
**Rating** | **String** | Risk Rating | [optional] [readonly] 
**BusinessFunctions** | **System.Collections.Hashtable** | A map from business function codes to &quot;&quot;Left side&quot;&quot; or &quot;&quot;Right side&quot;&quot; | [optional] [readonly] 
**Approvers** | **String[]** | List of risk approvers&#39; SAP usernames | [optional] [readonly] 
**MitigatingControls** | **String** | What was done to mitigate risks | [optional] [readonly] 
**CorrectionAdvice** | **String** | Recommendation on how to resolve risk | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ArmRisk = Initialize-PSSailpointArmRisk  -Name BS02_RISK `
 -Description This is a description of risk code BS02 `
 -Owners [] `
 -ExternalReference https://webui-dev.erpmaestro.com/home/what-if-report/100000 `
 -Rating Informational `
 -BusinessFunctions {BS02_01&#x3D;Left side, BS02_02&#x3D;Right side} `
 -Approvers [JOE USER] `
 -MitigatingControls Required two levels of verification `
 -CorrectionAdvice Run a certification campaign and determine if access should be revoked
```

- Convert the resource to JSON
```powershell
$ArmRisk | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

