---
id: nerm-delegations-post-request
title: DelegationsPostRequest
pagination_label: DelegationsPostRequest
sidebar_label: DelegationsPostRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DelegationsPostRequest', 'NERMDelegationsPostRequest'] 
slug: /tools/sdk/powershell/nerm/models/delegations-post-request
tags: ['SDK', 'Software Development Kit', 'DelegationsPostRequest', 'NERMDelegationsPostRequest']
---


# DelegationsPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Delegation** | [**Delegation1**](delegation1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DelegationsPostRequest = Initialize-NERMDelegationsPostRequest  -Delegation null
```

- Convert the resource to JSON
```powershell
$DelegationsPostRequest | ConvertTo-JSON
```


[[Back to top]](#) 

