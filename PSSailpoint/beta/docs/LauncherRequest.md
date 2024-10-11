# LauncherRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the Launcher, limited to 255 characters | 
**Description** | **String** | Description of the Launcher, limited to 2000 characters | 
**Type** | **String** | Launcher type | 
**Disabled** | **Boolean** | State of the Launcher | 
**Reference** | [**LauncherRequestReference**](LauncherRequestReference.md) |  | [optional] 
**Config** | **String** | JSON configuration associated with this Launcher, restricted to a max size of 4KB  | 

## Examples

- Prepare the resource
```powershell
$LauncherRequest = Initialize-PSSailpoint.BetaLauncherRequest  -Name Group Create `
 -Description Create a new Active Directory Group `
 -Type INTERACTIVE_PROCESS `
 -Disabled false `
 -Reference null `
 -Config {&quot;workflowId&quot; : &quot;6b42d9be-61b6-46af-827e-ea29ba8aa3d9&quot;}
```

- Convert the resource to JSON
```powershell
$LauncherRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

