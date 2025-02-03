---
id: v2024-access-profile-role
title: AccessProfileRole
pagination_label: AccessProfileRole
sidebar_label: AccessProfileRole
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfileRole', 'V2024AccessProfileRole'] 
slug: /tools/sdk/powershell/v2024/models/access-profile-role
tags: ['SDK', 'Software Development Kit', 'AccessProfileRole', 'V2024AccessProfileRole']
---


# AccessProfileRole

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** |  Pointer to **String** | The unique ID of the referenced object. | [optional] 
**Name** |  Pointer to **String** | The human readable name of the referenced object. | [optional] 
**DisplayName** |  Pointer to **String** |  | [optional] 
**Type** |  Pointer to [**DtoType**](dto-type) |  | [optional] 
**Description** |  Pointer to **String** |  | [optional] 
**Owner** |  Pointer to [**DisplayReference**](display-reference) |  | [optional] 
**Disabled** |  Pointer to **Boolean** |  | [optional] 
**Revocable** |  Pointer to **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileRole = Initialize-PSSailpoint.V2024AccessProfileRole  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -DisplayName John Q. Doe `
 -Type null `
 -Description null `
 -Owner null `
 -Disabled null `
 -Revocable null
```

- Convert the resource to JSON
```powershell
$AccessProfileRole | ConvertTo-JSON
```


[[Back to top]](#) 

