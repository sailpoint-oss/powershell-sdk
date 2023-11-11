# EmailNotificationOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NotifyManagers** | **Boolean** | If true, then the manager is notified of the lifecycle state change. | [optional] 
**NotifyAllAdmins** | **Boolean** | If true, then all the admins are notified of the lifecycle state change. | [optional] 
**NotifySpecificUsers** | **Boolean** | If true, then the users specified in &quot;&quot;emailAddressList&quot;&quot; below are notified of lifecycle state change. | [optional] 
**EmailAddressList** | **String[]** | List of user email addresses. If &quot;&quot;notifySpecificUsers&quot;&quot; option is true, then these users are notified of lifecycle state change. | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailNotificationOption = Initialize-BetaEmailNotificationOption  -NotifyManagers true `
 -NotifyAllAdmins true `
 -NotifySpecificUsers true `
 -EmailAddressList [test@test.com, test2@test.com]
```

- Convert the resource to JSON
```powershell
$EmailNotificationOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

