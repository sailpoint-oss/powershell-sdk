---
id: v2026-jit-activation-activate-response
title: JitActivationActivateResponse
pagination_label: JitActivationActivateResponse
sidebar_label: JitActivationActivateResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JitActivationActivateResponse', 'V2026JitActivationActivateResponse'] 
slug: /tools/sdk/powershell/v2026/models/jit-activation-activate-response
tags: ['SDK', 'Software Development Kit', 'JitActivationActivateResponse', 'V2026JitActivationActivateResponse']
---


# JitActivationActivateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Workflow or business identifier for this activation. | [required]
**ConnectionId** | **String** | Entitlement connection identifier for the activation. | [required]
**ActivationPeriodMins** | **Int32** | Activation duration in minutes for this workflow. | [required]
**Status** | [**ActivationWorkflowStatus**](activation-workflow-status) |  | [required]
**StartTime** | **System.DateTime** | Time when the activation workflow was started (ISO-8601). | [required]

## Examples

- Prepare the resource
```powershell
$JitActivationActivateResponse = Initialize-V2026JitActivationActivateResponse  -Id jit-activation-abc123 `
 -ConnectionId 757fb803-9024-5861-e510-83a56e4c5bd3 `
 -ActivationPeriodMins 120 `
 -Status null `
 -StartTime 2025-10-11T21:23:15Z
```

- Convert the resource to JSON
```powershell
$JitActivationActivateResponse | ConvertTo-JSON
```


[[Back to top]](#) 

