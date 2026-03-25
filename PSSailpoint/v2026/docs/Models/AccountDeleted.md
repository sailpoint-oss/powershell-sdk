---
id: v2026-account-deleted
title: AccountDeleted
pagination_label: AccountDeleted
sidebar_label: AccountDeleted
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountDeleted', 'V2026AccountDeleted'] 
slug: /tools/sdk/powershell/v2026/models/account-deleted
tags: ['SDK', 'Software Development Kit', 'AccountDeleted', 'V2026AccountDeleted']
---


# AccountDeleted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarEvent** | [**AccountDeletedEvent**](account-deleted-event) |  | [required]
**Source** | [**AccountSourceReference**](account-source-reference) |  | [required]
**Account** | [**AccountV2**](account-v2) |  | [required]
**Identity** | [**IdentityReference1**](identity-reference1) |  | [required]

## Examples

- Prepare the resource
```powershell
$AccountDeleted = Initialize-V2026AccountDeleted  -VarEvent null `
 -Source null `
 -Account null `
 -Identity null
```

- Convert the resource to JSON
```powershell
$AccountDeleted | ConvertTo-JSON
```


[[Back to top]](#) 

