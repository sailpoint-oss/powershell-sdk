---
id: identity-created
title: IdentityCreated
pagination_label: IdentityCreated
sidebar_label: IdentityCreated
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityCreated', 'IdentityCreated'] 
slug: /tools/sdk/powershell/triggers/models/identity-created
tags: ['SDK', 'Software Development Kit', 'IdentityCreated', 'IdentityCreated']
---


# IdentityCreated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**IdentityCreatedIdentity**](identity-created-identity) |  | [required]
**Attributes** | **map[string]AnyType** | The attributes assigned to the identity. Attributes are determined by the identity profile. | [required]

## Examples

- Prepare the resource
```powershell
$IdentityCreated = Initialize-IdentityCreated  -Identity null `
 -Attributes {"firstname":"John"}
```

- Convert the resource to JSON
```powershell
$IdentityCreated | ConvertTo-JSON
```


[[Back to top]](#) 

