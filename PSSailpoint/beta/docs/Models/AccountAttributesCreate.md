---
id: beta-account-attributes-create
title: AccountAttributesCreate
pagination_label: AccountAttributesCreate
sidebar_label: AccountAttributesCreate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountAttributesCreate', 'BetaAccountAttributesCreate'] 
slug: /tools/sdk/powershell/beta/models/account-attributes-create
tags: ['SDK', 'Software Development Kit', 'AccountAttributesCreate', 'BetaAccountAttributesCreate']
---


# AccountAttributesCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**AccountAttributesCreateAttributes**](account-attributes-create-attributes) |  | [required]

## Examples

- Prepare the resource
```powershell
$AccountAttributesCreate = Initialize-PSSailpoint.BetaAccountAttributesCreate  -Attributes null
$AccountAttributesCreate = @"{  "Attributes": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToAccountAttributesCreate -Json $AccountAttributesCreate
```


[[Back to top]](#) 

