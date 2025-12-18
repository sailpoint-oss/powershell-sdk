---
id: v2025-identity-reference1
title: IdentityReference1
pagination_label: IdentityReference1
sidebar_label: IdentityReference1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityReference1', 'V2025IdentityReference1'] 
slug: /tools/sdk/powershell/v2025/models/identity-reference1
tags: ['SDK', 'Software Development Kit', 'IdentityReference1', 'V2025IdentityReference1']
---


# IdentityReference1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the identity that is correlated with this account. | [required]
**Name** | **String** | The name of the identity that is correlated with this account. | [required]
**Alias** | **String** | The alias of the identity. | [required]
**Email** | **String** | The email of the identity. | [required]

## Examples

- Prepare the resource
```powershell
$IdentityReference1 = Initialize-V2025IdentityReference1  -Id ee769173319b41d19ccec6c235423237b `
 -Name john.doe `
 -Alias jdoe `
 -Email john.doe@email.com
```

- Convert the resource to JSON
```powershell
$IdentityReference1 | ConvertTo-JSON
```


[[Back to top]](#) 

