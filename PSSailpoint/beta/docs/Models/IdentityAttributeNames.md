---
id: beta-identity-attribute-names
title: IdentityAttributeNames
pagination_label: IdentityAttributeNames
sidebar_label: IdentityAttributeNames
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityAttributeNames', 'BetaIdentityAttributeNames'] 
slug: /tools/sdk/powershell/beta/models/identity-attribute-names
tags: ['SDK', 'Software Development Kit', 'IdentityAttributeNames', 'BetaIdentityAttributeNames']
---


# IdentityAttributeNames

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **[]String** | List of identity attributes' technical names. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttributeNames = Initialize-PSSailpoint.BetaIdentityAttributeNames  -Ids [name, displayName]
$IdentityAttributeNames = @"{  "Ids": ["name", "displayName"] }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToIdentityAttributeNames -Json $IdentityAttributeNames
```


[[Back to top]](#) 

