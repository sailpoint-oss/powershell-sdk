---
id: v2026-jit-activation-deactivate-request
title: JitActivationDeactivateRequest
pagination_label: JitActivationDeactivateRequest
sidebar_label: JitActivationDeactivateRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JitActivationDeactivateRequest', 'V2026JitActivationDeactivateRequest'] 
slug: /tools/sdk/powershell/v2026/models/jit-activation-deactivate-request
tags: ['SDK', 'Software Development Kit', 'JitActivationDeactivateRequest', 'V2026JitActivationDeactivateRequest']
---


# JitActivationDeactivateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionId** | **String** | Entitlement connection identifier for the activation to deactivate. | [required]

## Examples

- Prepare the resource
```powershell
$JitActivationDeactivateRequest = Initialize-V2026JitActivationDeactivateRequest  -ConnectionId 757fb803-9024-5861-e510-83a56e4c5bd3
```

- Convert the resource to JSON
```powershell
$JitActivationDeactivateRequest | ConvertTo-JSON
```


[[Back to top]](#) 

