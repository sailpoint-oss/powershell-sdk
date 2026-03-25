---
id: v2026-verification-request
title: VerificationRequest
pagination_label: VerificationRequest
sidebar_label: VerificationRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'VerificationRequest', 'V2026VerificationRequest'] 
slug: /tools/sdk/powershell/v2026/models/verification-request
tags: ['SDK', 'Software Development Kit', 'VerificationRequest', 'V2026VerificationRequest']
---


# VerificationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StreamId** | **String** | Stream ID for verification. | [required]
**State** | **String** | Optional state value for verification challenge. | [optional] 

## Examples

- Prepare the resource
```powershell
$VerificationRequest = Initialize-V2026VerificationRequest  -StreamId 550e8400-e29b-41d4-a716-446655440000 `
 -State verification-challenge-state-123
```

- Convert the resource to JSON
```powershell
$VerificationRequest | ConvertTo-JSON
```


[[Back to top]](#) 

