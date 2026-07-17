---
id: identity-deleted
title: IdentityDeleted
pagination_label: IdentityDeleted
sidebar_label: IdentityDeleted
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityDeleted', 'IdentityDeleted'] 
slug: /tools/sdk/powershell/triggers/models/identity-deleted
tags: ['SDK', 'Software Development Kit', 'IdentityDeleted', 'IdentityDeleted']
---


# IdentityDeleted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**IdentityDeletedIdentity**](identity-deleted-identity) |  | [required]
**Attributes** | **map[string]AnyType** | The attributes assigned to the identity. Attributes are determined by the identity profile. | [required]

## Examples

- Prepare the resource
```powershell
$IdentityDeleted = Initialize-IdentityDeleted  -Identity null `
 -Attributes {"firstname":"John"}
```

- Convert the resource to JSON
```powershell
$IdentityDeleted | ConvertTo-JSON
```


[[Back to top]](#) 

