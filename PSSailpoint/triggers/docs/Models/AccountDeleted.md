---
id: account-deleted
title: AccountDeleted
pagination_label: AccountDeleted
sidebar_label: AccountDeleted
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountDeleted', 'AccountDeleted'] 
slug: /tools/sdk/powershell/triggers/models/account-deleted
tags: ['SDK', 'Software Development Kit', 'AccountDeleted', 'AccountDeleted']
---


# AccountDeleted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarEvent** | [**AccountDeletedEvent**](account-deleted-event) |  | [required]
**Source** | [**AccountSourceReference**](account-source-reference) |  | [required]
**Account** | [**AccountV2**](account-v2) |  | [required]
**Identity** | [**IdentityReference2**](identity-reference2) |  | [required]

## Examples

- Prepare the resource
```powershell
$AccountDeleted = Initialize-AccountDeleted  -VarEvent null `
 -Source null `
 -Account null `
 -Identity null
```

- Convert the resource to JSON
```powershell
$AccountDeleted | ConvertTo-JSON
```


[[Back to top]](#) 

