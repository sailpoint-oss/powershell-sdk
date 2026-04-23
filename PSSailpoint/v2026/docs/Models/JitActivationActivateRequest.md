---
id: v2026-jit-activation-activate-request
title: JitActivationActivateRequest
pagination_label: JitActivationActivateRequest
sidebar_label: JitActivationActivateRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JitActivationActivateRequest', 'V2026JitActivationActivateRequest'] 
slug: /tools/sdk/powershell/v2026/models/jit-activation-activate-request
tags: ['SDK', 'Software Development Kit', 'JitActivationActivateRequest', 'V2026JitActivationActivateRequest']
---


# JitActivationActivateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionId** | **String** | Entitlement connection identifier for the activation. | [required]
**ActivationPeriodMins** | **Int32** | Requested activation duration in minutes. | [required]

## Examples

- Prepare the resource
```powershell
$JitActivationActivateRequest = Initialize-V2026JitActivationActivateRequest  -ConnectionId 757fb803-9024-5861-e510-83a56e4c5bd3 `
 -ActivationPeriodMins 120
```

- Convert the resource to JSON
```powershell
$JitActivationActivateRequest | ConvertTo-JSON
```


[[Back to top]](#) 

