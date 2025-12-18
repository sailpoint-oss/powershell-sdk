---
id: v2025-account-created
title: AccountCreated
pagination_label: AccountCreated
sidebar_label: AccountCreated
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountCreated', 'V2025AccountCreated'] 
slug: /tools/sdk/powershell/v2025/models/account-created
tags: ['SDK', 'Software Development Kit', 'AccountCreated', 'V2025AccountCreated']
---


# AccountCreated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarEvent** | [**AccountCreatedEvent**](account-created-event) |  | [required]
**Source** | [**AccountSourceReference**](account-source-reference) |  | [required]
**Account** | [**AccountV2**](account-v2) |  | [required]
**Identity** | [**IdentityReference1**](identity-reference1) |  | [required]

## Examples

- Prepare the resource
```powershell
$AccountCreated = Initialize-V2025AccountCreated  -VarEvent null `
 -Source null `
 -Account null `
 -Identity null
```

- Convert the resource to JSON
```powershell
$AccountCreated | ConvertTo-JSON
```


[[Back to top]](#) 

