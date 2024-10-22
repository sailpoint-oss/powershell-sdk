# ReviewableEntitlementAccountOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id associated with the machine account owner | [optional] 
**Type** | **String** | An enumeration of the types of Owner supported within the IdentityNow infrastructure. | [optional] 
**DisplayName** | **String** | The machine account owner&#39;s display name | [optional] 

## Examples

- Prepare the resource
```powershell
$ReviewableEntitlementAccountOwner = Initialize-PSSailpoint.V3ReviewableEntitlementAccountOwner  -Id 2c9180857182305e0171993737eb29e8 `
 -Type IDENTITY `
 -DisplayName Alison Ferguson
```

- Convert the resource to JSON
```powershell
$ReviewableEntitlementAccountOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

