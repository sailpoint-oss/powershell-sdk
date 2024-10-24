# SubscriptionPutRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Subscription name. | [optional] 
**Description** | **String** | Subscription description. | [optional] 
**Type** | [**SubscriptionType**](SubscriptionType.md) |  | [optional] 
**ResponseDeadline** | **String** | Deadline for completing REQUEST_RESPONSE trigger invocation, represented in ISO-8601 duration format. | [optional] [default to "PT1H"]
**HttpConfig** | [**HttpConfig**](HttpConfig.md) |  | [optional] 
**EventBridgeConfig** | [**EventBridgeConfig**](EventBridgeConfig.md) |  | [optional] 
**Enabled** | **Boolean** | Whether subscription should receive real-time trigger invocations or not.  Test trigger invocations are always enabled regardless of this option. | [optional] [default to $true]
**VarFilter** | **String** | JSONPath filter to conditionally invoke trigger when expression evaluates to true. | [optional] 

## Examples

- Prepare the resource
```powershell
$SubscriptionPutRequest = Initialize-PSSailpoint.V2024SubscriptionPutRequest  -Name Access request subscription `
 -Description Access requested to site xyz `
 -Type null `
 -ResponseDeadline PT1H `
 -HttpConfig null `
 -EventBridgeConfig null `
 -Enabled true `
 -VarFilter $[?($.identityId &#x3D;&#x3D; &quot;201327fda1c44704ac01181e963d463c&quot;)]
```

- Convert the resource to JSON
```powershell
$SubscriptionPutRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

