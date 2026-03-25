---
id: v2026-account-attributes-create
title: AccountAttributesCreate
pagination_label: AccountAttributesCreate
sidebar_label: AccountAttributesCreate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountAttributesCreate', 'V2026AccountAttributesCreate'] 
slug: /tools/sdk/powershell/v2026/models/account-attributes-create
tags: ['SDK', 'Software Development Kit', 'AccountAttributesCreate', 'V2026AccountAttributesCreate']
---


# AccountAttributesCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**AccountAttributesCreateAttributes**](account-attributes-create-attributes) |  | [required]

## Examples

- Prepare the resource
```powershell
$AccountAttributesCreate = Initialize-V2026AccountAttributesCreate  -Attributes null
```

- Convert the resource to JSON
```powershell
$AccountAttributesCreate | ConvertTo-JSON
```


[[Back to top]](#) 

