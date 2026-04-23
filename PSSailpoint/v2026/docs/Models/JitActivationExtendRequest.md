---
id: v2026-jit-activation-extend-request
title: JitActivationExtendRequest
pagination_label: JitActivationExtendRequest
sidebar_label: JitActivationExtendRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JitActivationExtendRequest', 'V2026JitActivationExtendRequest'] 
slug: /tools/sdk/powershell/v2026/models/jit-activation-extend-request
tags: ['SDK', 'Software Development Kit', 'JitActivationExtendRequest', 'V2026JitActivationExtendRequest']
---


# JitActivationExtendRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionId** | **String** | Entitlement connection identifier for the activation to extend. | [required]
**ActivationPeriodExtensionMins** | **Int32** | Number of minutes to extend the activation period. | [required]

## Examples

- Prepare the resource
```powershell
$JitActivationExtendRequest = Initialize-V2026JitActivationExtendRequest  -ConnectionId 757fb803-9024-5861-e510-83a56e4c5bd3 `
 -ActivationPeriodExtensionMins 120
```

- Convert the resource to JSON
```powershell
$JitActivationExtendRequest | ConvertTo-JSON
```


[[Back to top]](#) 

