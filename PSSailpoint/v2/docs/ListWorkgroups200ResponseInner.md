# ListWorkgroups200ResponseInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionCount** | **Int32** |  | [optional] 
**Created** | **Int64** |  | [optional] 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**MemberCount** | **Int32** |  | [optional] 
**Modified** | **Int64** |  | [optional] 
**Name** | **String** |  | [optional] 
**Owner** | [**ListWorkgroups200ResponseInnerOwner**](ListWorkgroups200ResponseInnerOwner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ListWorkgroups200ResponseInner = Initialize-V2ListWorkgroups200ResponseInner  -ConnectionCount 2 `
 -Created 1641498673000 `
 -Description Phil Governance Group `
 -Id b0c131fa-5133-4efb-9bb2-e22529f44cad `
 -MemberCount 2 `
 -Modified 1641498673000 `
 -Name Phil Governance Group `
 -Owner null
```

- Convert the resource to JSON
```powershell
$ListWorkgroups200ResponseInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

