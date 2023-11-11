# SodViolationCheckResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**ErrorMessageDto**](ErrorMessageDto.md) |  | [optional] 
**ClientMetadata** | **System.Collections.Hashtable** | Arbitrary key-value pairs. They will never be processed by the IdentityNow system but will be returned on completion of the violation check. | [optional] 
**ViolationContexts** | [**SodViolationContext[]**](SodViolationContext.md) |  | [optional] 
**ViolatedPolicies** | [**SodPolicyDto[]**](SodPolicyDto.md) | A list of the SOD policies that were violated. | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationCheckResult = Initialize-BetaSodViolationCheckResult  -Message null `
 -ClientMetadata {requestedAppName&#x3D;test-app, requestedAppId&#x3D;2c91808f7892918f0178b78da4a305a1} `
 -ViolationContexts null `
 -ViolatedPolicies null
```

- Convert the resource to JSON
```powershell
$SodViolationCheckResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

