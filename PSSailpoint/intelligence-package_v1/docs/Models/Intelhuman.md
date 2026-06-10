---
id: intelhuman
title: Intelhuman
pagination_label: Intelhuman
sidebar_label: Intelhuman
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelhuman', 'Intelhuman'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelhuman
tags: ['SDK', 'Software Development Kit', 'Intelhuman', 'Intelhuman']
---


# Intelhuman

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
$Intelhuman = Initialize-Intelhuman  -Alias jdoe `
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
$Intelhuman | ConvertTo-JSON
```


[[Back to top]](#) 

