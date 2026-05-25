---
id: v2026-intel-human
title: IntelHuman
pagination_label: IntelHuman
sidebar_label: IntelHuman
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelHuman', 'V2026IntelHuman'] 
slug: /tools/sdk/powershell/v2026/models/intel-human
tags: ['SDK', 'Software Development Kit', 'IntelHuman', 'V2026IntelHuman']
---


# IntelHuman

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Alias** | **String** | Primary login or account alias for the human identity. | [required]
**Email** | **String** | Primary business email address for the human identity. | [required]
**IdentityStatus** | **String** | Current identity lifecycle status label from Identity Security Cloud. | [required]
**LifecycleState** | **String** | Lifecycle state name assigned through provisioning policy when present. | [optional] 
**ProcessingState** | **String** | Processing state for outstanding identity change operations when present. | [optional] 
**IsProtected** | **Boolean** | True when the identity is marked protected from automated changes. | [required]
**Manager** | **String** | Legacy manager identity identifier or display reference when assigned. | [optional] 
**ManagerId** | **String** | Manager identity identifier when correlated in Identity Security Cloud. | [optional] 
**ManagerName** | **String** | Manager display name when available from identity services. | [optional] 
**IsManager** | **Boolean** | True when the identity is flagged as a people manager in the organization. | [required]
**LastRefreshAt** | **System.DateTime** | Timestamp of the last successful identity refresh from sources when known. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelHuman = Initialize-V2026IntelHuman  -Alias jdoe `
 -Email john.doe@example.com `
 -IdentityStatus Active `
 -LifecycleState contractor `
 -ProcessingState pending `
 -IsProtected false `
 -Manager ef38f94347e94562b5bb8424a56397d9 `
 -ManagerId ef38f94347e94562b5bb8424a56397d9 `
 -ManagerName Alex Manager `
 -IsManager true `
 -LastRefreshAt 2024-05-01T08:00Z
```

- Convert the resource to JSON
```powershell
$IntelHuman | ConvertTo-JSON
```


[[Back to top]](#) 

