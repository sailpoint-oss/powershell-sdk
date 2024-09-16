# UpdateAccessProfilesInBulk412Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**SystemCollectionsHashtable**](.md) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateAccessProfilesInBulk412Response = Initialize-PSSailpoint.V2024UpdateAccessProfilesInBulk412Response  -Message  API/Feature not enabled for your organization.
```

- Convert the resource to JSON
```powershell
$UpdateAccessProfilesInBulk412Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

