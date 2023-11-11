# AccessRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestedFor** | **String[]** | A list of Identity IDs for whom the Access is requested. If it&#39;s a Revoke request, there can only be one Identity ID. | 
**RequestType** | [**AccessRequestType**](AccessRequestType.md) |  | [optional] 
**RequestedItems** | [**AccessRequestItem[]**](AccessRequestItem.md) |  | 
**ClientMetadata** | **System.Collections.Hashtable** | Arbitrary key-value pairs. They will never be processed by the IdentityNow system but will be returned on associated APIs such as /account-activities. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequest = Initialize-BetaAccessRequest  -RequestedFor null `
 -RequestType null `
 -RequestedItems null `
 -ClientMetadata {requestedAppId&#x3D;2c91808f7892918f0178b78da4a305a1, requestedAppName&#x3D;test-app}
```

- Convert the resource to JSON
```powershell
$AccessRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

