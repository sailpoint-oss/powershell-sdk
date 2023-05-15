# PublicOrgConfigArmData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ArmCustomerId** | **String** | ARM Customer ID | [optional] 
**ArmSsoUrl** | **String** | ARM SSO URL | [optional] 

## Examples

- Prepare the resource
```powershell
$PublicOrgConfigArmData = Initialize-PSSailpointPublicOrgConfigArmData  -ArmCustomerId DE38E75A-5FF6-4A65-5DC7-08D64426B09E `
 -ArmSsoUrl https://your-arm-sso-url
```

- Convert the resource to JSON
```powershell
$PublicOrgConfigArmData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

