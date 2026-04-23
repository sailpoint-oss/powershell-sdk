---
id: v2026-jit-activation-extend-response
title: JitActivationExtendResponse
pagination_label: JitActivationExtendResponse
sidebar_label: JitActivationExtendResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JitActivationExtendResponse', 'V2026JitActivationExtendResponse'] 
slug: /tools/sdk/powershell/v2026/models/jit-activation-extend-response
tags: ['SDK', 'Software Development Kit', 'JitActivationExtendResponse', 'V2026JitActivationExtendResponse']
---


# JitActivationExtendResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Workflow or business identifier for this activation. | [required]
**ConnectionId** | **String** | Entitlement connection identifier for the activation. | [required]
**ActivationPeriodExtensionMins** | **Int32** | Extension applied to the activation period, in minutes. | [required]
**Status** | [**ActivationWorkflowStatus**](activation-workflow-status) |  | [required]
**StartTime** | **System.DateTime** | Time associated with this extend request (ISO-8601). | [required]

## Examples

- Prepare the resource
```powershell
$JitActivationExtendResponse = Initialize-V2026JitActivationExtendResponse  -Id jit-activation-abc123 `
 -ConnectionId 757fb803-9024-5861-e510-83a56e4c5bd3 `
 -ActivationPeriodExtensionMins 120 `
 -Status null `
 -StartTime 2025-10-11T21:23:15Z
```

- Convert the resource to JSON
```powershell
$JitActivationExtendResponse | ConvertTo-JSON
```


[[Back to top]](#) 

