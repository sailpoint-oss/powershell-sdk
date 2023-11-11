# GetOrgSettings200ResponseSystemNotificationConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Notifications** | [**GetOrgSettings200ResponseSystemNotificationConfigNotificationsInner[]**](GetOrgSettings200ResponseSystemNotificationConfigNotificationsInner.md) |  | [optional] 
**RecipientType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetOrgSettings200ResponseSystemNotificationConfig = Initialize-V2GetOrgSettings200ResponseSystemNotificationConfig  -Notifications null `
 -RecipientType null
```

- Convert the resource to JSON
```powershell
$GetOrgSettings200ResponseSystemNotificationConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

