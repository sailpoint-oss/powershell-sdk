# Transform
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique ID of this transform | [optional] [readonly] 
**Name** | **String** | Unique name of this transform | [readonly] 
**Type** | **String** | The transform type (see [Transformations in IdentityNow Using Seaspray](https://community.sailpoint.com/docs/DOC-4629)). | [readonly] 
**Attributes** | [**SystemCollectionsHashtable**](.md) | Meta-data about the transform. Values in this list are specific to the type of transform to be executed. | 
**Internal** | **Boolean** | Indicates whether this is an internal SailPoint-created transform or a customer-created transform | [optional] [readonly] [default to $false]

## Examples

- Prepare the resource
```powershell
$Transform = Initialize-PSSailpointBetaTransform  -Id 2cd78adghjkja34jh2b1hkjhasuecd `
 -Name Timestamp To Date `
 -Type concat `
 -Attributes {inputFormat&#x3D;MMM dd yyyy, HH:mm:ss.SSS, outputFormat&#x3D;yyyy/dd/MM} `
 -Internal false
```

- Convert the resource to JSON
```powershell
$Transform | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

