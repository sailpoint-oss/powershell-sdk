# GetReferenceIdentityAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | This must always be set to &quot;&quot;Cloud Services Deployment Utility&quot;&quot; | 
**Operation** | **String** | The operation to perform &#x60;getReferenceIdentityAttribute&#x60; | 
**Uid** | **String** | This is the SailPoint User Name (uid) value of the identity whose attribute is desired  As a convenience feature, you can use the &#x60;manager&#x60; keyword to dynamically look up the user&#39;s manager and then get that manager&#39;s identity attribute.  | 
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] 

## Examples

- Prepare the resource
```powershell
$GetReferenceIdentityAttribute = Initialize-PSSailpoint.V2024GetReferenceIdentityAttribute  -Name Cloud Services Deployment Utility `
 -Operation getReferenceIdentityAttribute `
 -Uid 2c91808570313110017040b06f344ec9 `
 -RequiresPeriodicRefresh false
```

- Convert the resource to JSON
```powershell
$GetReferenceIdentityAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

