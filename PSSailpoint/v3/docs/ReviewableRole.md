# ReviewableRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id for the Role | [optional] 
**Name** | **String** | The name of the Role | [optional] 
**Description** | **String** | Information about the Role | [optional] 
**Privileged** | **Boolean** | Indicates if the entitlement is a privileged entitlement | [optional] 
**Owner** | [**IdentityReferenceWithNameAndEmail**](IdentityReferenceWithNameAndEmail.md) |  | [optional] 
**Revocable** | **Boolean** | Indicates whether the Role can be revoked or requested | [optional] 
**EndDate** | **System.DateTime** | The date when a user&#39;s access expires. | [optional] 
**AccessProfiles** | [**ReviewableAccessProfile[]**](ReviewableAccessProfile.md) | The list of Access Profiles associated with this Role | [optional] 

## Examples

- Prepare the resource
```powershell
$ReviewableRole = Initialize-ReviewableRole  -Id 2c91808a7190d06e0171993907fd0794 `
 -Name Accounting-Employees `
 -Description Role for members of the accounting department with the necessary Access Profiles `
 -Privileged false `
 -Owner null `
 -Revocable false `
 -EndDate 2021-12-25T00:00Z `
 -AccessProfiles null
```

- Convert the resource to JSON
```powershell
$ReviewableRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

