# ViolationContextPolicyAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ViolationContextPolicyAllOf = Initialize-ViolationContextPolicyAllOf  -Type SOD_POLICY `
 -Name A very cool policy name
```

- Convert the resource to JSON
```powershell
$ViolationContextPolicyAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

