# LifecycleState
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the Object | [optional] [readonly] 
**Name** | **String** | Name of the Object | 
**Created** | **System.DateTime** | Creation date of the Object | [optional] [readonly] 
**Modified** | **System.DateTime** | Last modification date of the Object | [optional] [readonly] 
**Enabled** | **Boolean** | Whether the lifecycle state is enabled or disabled. | [optional] 
**TechnicalName** | **String** | The technical name for lifecycle state. This is for internal use. | 
**Description** | **String** | Lifecycle state description. | [optional] 
**IdentityCount** | **Int32** | Number of identities that have the lifecycle state. | [optional] [readonly] 
**EmailNotificationOption** | [**EmailNotificationOption**](EmailNotificationOption.md) |  | [optional] 
**AccountActions** | [**AccountAction[]**](AccountAction.md) |  | [optional] 
**AccessProfileIds** | **String[]** | List of unique access-profile IDs that are associated with the lifecycle state. | [optional] 

## Examples

- Prepare the resource
```powershell
$LifecycleState = Initialize-LifecycleState  -Id id12345 `
 -Name aName `
 -Created 2015-05-28T14:07:17Z `
 -Modified 2015-05-28T14:07:17Z `
 -Enabled true `
 -TechnicalName Technical Name `
 -Description Lifecycle description `
 -IdentityCount 42 `
 -EmailNotificationOption null `
 -AccountActions null `
 -AccessProfileIds [2c918084660f45d6016617daa9210584, 2c918084660f45d6016617daa9210500]
```

- Convert the resource to JSON
```powershell
$LifecycleState | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

