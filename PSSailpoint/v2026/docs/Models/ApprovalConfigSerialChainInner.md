---
id: v2026-approval-config-serial-chain-inner
title: ApprovalConfigSerialChainInner
pagination_label: ApprovalConfigSerialChainInner
sidebar_label: ApprovalConfigSerialChainInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalConfigSerialChainInner', 'V2026ApprovalConfigSerialChainInner'] 
slug: /tools/sdk/powershell/v2026/models/approval-config-serial-chain-inner
tags: ['SDK', 'Software Development Kit', 'ApprovalConfigSerialChainInner', 'V2026ApprovalConfigSerialChainInner']
---


# ApprovalConfigSerialChainInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChainId** | **String** | ID of the serial chain. | [optional] 
**Tier** | **Int64** | Starting at 1 defines the order in which the identities will get assigned | [optional] 
**IdentityId** | **String** | Identity ID in the serial chain. | [optional] 
**IdentityType** | **String** | Type of identity in the serial chain. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalConfigSerialChainInner = Initialize-V2026ApprovalConfigSerialChainInner  -ChainId 23dc206e-2a9e-4f98-93db-8d6e342cca18 `
 -Tier 1 `
 -IdentityId 2c9180858090ea8801809a0465e829da `
 -IdentityType IDENTITY
```

- Convert the resource to JSON
```powershell
$ApprovalConfigSerialChainInner | ConvertTo-JSON
```


[[Back to top]](#) 

