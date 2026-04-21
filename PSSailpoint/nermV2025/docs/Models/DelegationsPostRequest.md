---
id: nermv2025-delegations-post-request
title: DelegationsPostRequest
pagination_label: DelegationsPostRequest
sidebar_label: DelegationsPostRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DelegationsPostRequest', 'NERMV2025DelegationsPostRequest'] 
slug: /tools/sdk/powershell/nermv2025/models/delegations-post-request
tags: ['SDK', 'Software Development Kit', 'DelegationsPostRequest', 'NERMV2025DelegationsPostRequest']
---


# DelegationsPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Delegation** | [**Delegation2**](delegation2) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DelegationsPostRequest = Initialize-NERMV2025DelegationsPostRequest  -Delegation null
```

- Convert the resource to JSON
```powershell
$DelegationsPostRequest | ConvertTo-JSON
```


[[Back to top]](#) 

