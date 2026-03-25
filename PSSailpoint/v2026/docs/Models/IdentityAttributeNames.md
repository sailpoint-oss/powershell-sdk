---
id: v2026-identity-attribute-names
title: IdentityAttributeNames
pagination_label: IdentityAttributeNames
sidebar_label: IdentityAttributeNames
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityAttributeNames', 'V2026IdentityAttributeNames'] 
slug: /tools/sdk/powershell/v2026/models/identity-attribute-names
tags: ['SDK', 'Software Development Kit', 'IdentityAttributeNames', 'V2026IdentityAttributeNames']
---


# IdentityAttributeNames

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **[]String** | List of identity attributes' technical names. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttributeNames = Initialize-V2026IdentityAttributeNames  -Ids [name, displayName]
```

- Convert the resource to JSON
```powershell
$IdentityAttributeNames | ConvertTo-JSON
```


[[Back to top]](#) 

