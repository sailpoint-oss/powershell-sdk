# GetOrgSettings200ResponseSystemNotificationConfigNotificationsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | [optional] 
**ByEmail** | **Boolean** |  | [optional] 
**Thresholds** | [**GetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds**](GetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetOrgSettings200ResponseSystemNotificationConfigNotificationsInner = Initialize-V2GetOrgSettings200ResponseSystemNotificationConfigNotificationsInner  -Type null `
 -ByEmail null `
 -Thresholds null
```

- Convert the resource to JSON
```powershell
$GetOrgSettings200ResponseSystemNotificationConfigNotificationsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

