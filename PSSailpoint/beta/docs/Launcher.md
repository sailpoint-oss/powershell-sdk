# Launcher
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the Launcher | 
**Created** | **System.DateTime** | Date the Launcher was created | 
**Modified** | **System.DateTime** | Date the Launcher was last modified | 
**Owner** | [**LauncherOwner**](LauncherOwner.md) |  | 
**Name** | **String** | Name of the Launcher, limited to 255 characters | 
**Description** | **String** | Description of the Launcher, limited to 2000 characters | 
**Type** | **String** | Launcher type | 
**Disabled** | **Boolean** | State of the Launcher | 
**Reference** | [**LauncherReference**](LauncherReference.md) |  | [optional] 
**Config** | **String** | JSON configuration associated with this Launcher, restricted to a max size of 4KB  | 

## Examples

- Prepare the resource
```powershell
$Launcher = Initialize-PSSailpoint.BetaLauncher  -Id 1b630bed-0941-4792-a712-57a5868ca34d `
 -Created 2024-04-16T20:07:30.601016489Z `
 -Modified 2024-04-17T18:02:07.320143194Z `
 -Owner null `
 -Name Group Create `
 -Description Create a new Active Directory Group `
 -Type INTERACTIVE_PROCESS `
 -Disabled false `
 -Reference null `
 -Config {&quot;workflowId&quot; : &quot;6b42d9be-61b6-46af-827e-ea29ba8aa3d9&quot;}
```

- Convert the resource to JSON
```powershell
$Launcher | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

