---
id: jit-activation-extend-request
title: JitActivationExtendRequest
pagination_label: JitActivationExtendRequest
sidebar_label: JitActivationExtendRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JitActivationExtendRequest', 'JitActivationExtendRequest'] 
slug: /tools/sdk/powershell/jitactivations/models/jit-activation-extend-request
tags: ['SDK', 'Software Development Kit', 'JitActivationExtendRequest', 'JitActivationExtendRequest']
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
$JitActivationExtendRequest = Initialize-JitActivationExtendRequest  -ConnectionId 757fb803-9024-5861-e510-83a56e4c5bd3 `
 -ActivationPeriodExtensionMins 120
```

- Convert the resource to JSON
```powershell
$JitActivationExtendRequest | ConvertTo-JSON
```


[[Back to top]](#) 

