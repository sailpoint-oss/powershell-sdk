---
id: account-created
title: AccountCreated
pagination_label: AccountCreated
sidebar_label: AccountCreated
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountCreated', 'AccountCreated'] 
slug: /tools/sdk/powershell/triggers/models/account-created
tags: ['SDK', 'Software Development Kit', 'AccountCreated', 'AccountCreated']
---


# AccountCreated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarEvent** | [**AccountCreatedEvent**](account-created-event) |  | [required]
**Source** | [**AccountSourceReference**](account-source-reference) |  | [required]
**Account** | [**AccountV2**](account-v2) |  | [required]
**Identity** | [**IdentityReference2**](identity-reference2) |  | [required]

## Examples

- Prepare the resource
```powershell
$AccountCreated = Initialize-AccountCreated  -VarEvent null `
 -Source null `
 -Account null `
 -Identity null
```

- Convert the resource to JSON
```powershell
$AccountCreated | ConvertTo-JSON
```


[[Back to top]](#) 

