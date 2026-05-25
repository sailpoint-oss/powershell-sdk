---
id: v2026-intel-identity-timestamps
title: IntelIdentityTimestamps
pagination_label: IntelIdentityTimestamps
sidebar_label: IntelIdentityTimestamps
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelIdentityTimestamps', 'V2026IntelIdentityTimestamps'] 
slug: /tools/sdk/powershell/v2026/models/intel-identity-timestamps
tags: ['SDK', 'Software Development Kit', 'IntelIdentityTimestamps', 'V2026IntelIdentityTimestamps']
---


# IntelIdentityTimestamps

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** | Timestamp when the identity record was first created in Identity Security Cloud. | [required]
**ModifiedAt** | **System.DateTime** | Timestamp when the identity record was last modified in Identity Security Cloud. | [required]

## Examples

- Prepare the resource
```powershell
$IntelIdentityTimestamps = Initialize-V2026IntelIdentityTimestamps  -CreatedAt 2024-01-15T10:30Z `
 -ModifiedAt 2024-06-20T14:45Z
```

- Convert the resource to JSON
```powershell
$IntelIdentityTimestamps | ConvertTo-JSON
```


[[Back to top]](#) 

