---
id: v2026-jit-activation-deactivate-response
title: JitActivationDeactivateResponse
pagination_label: JitActivationDeactivateResponse
sidebar_label: JitActivationDeactivateResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JitActivationDeactivateResponse', 'V2026JitActivationDeactivateResponse'] 
slug: /tools/sdk/powershell/v2026/models/jit-activation-deactivate-response
tags: ['SDK', 'Software Development Kit', 'JitActivationDeactivateResponse', 'V2026JitActivationDeactivateResponse']
---


# JitActivationDeactivateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Workflow or business identifier for this activation. | [required]
**ConnectionId** | **String** | Entitlement connection identifier for the activation. | [required]
**Status** | [**ActivationWorkflowStatus**](activation-workflow-status) |  | [required]
**StartTime** | **System.DateTime** | Time associated with this deactivation request (ISO-8601). | [required]

## Examples

- Prepare the resource
```powershell
$JitActivationDeactivateResponse = Initialize-V2026JitActivationDeactivateResponse  -Id jit-activation-abc123 `
 -ConnectionId 757fb803-9024-5861-e510-83a56e4c5bd3 `
 -Status null `
 -StartTime 2025-10-11T21:23:15Z
```

- Convert the resource to JSON
```powershell
$JitActivationDeactivateResponse | ConvertTo-JSON
```


[[Back to top]](#) 

