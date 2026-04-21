---
id: nermv2025-delegations-post201-response
title: DelegationsPost201Response
pagination_label: DelegationsPost201Response
sidebar_label: DelegationsPost201Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DelegationsPost201Response', 'NERMV2025DelegationsPost201Response'] 
slug: /tools/sdk/powershell/nermv2025/models/delegations-post201-response
tags: ['SDK', 'Software Development Kit', 'DelegationsPost201Response', 'NERMV2025DelegationsPost201Response']
---


# DelegationsPost201Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Delegation** | [**Delegation1**](delegation1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DelegationsPost201Response = Initialize-NERMV2025DelegationsPost201Response  -Delegation null
```

- Convert the resource to JSON
```powershell
$DelegationsPost201Response | ConvertTo-JSON
```


[[Back to top]](#) 

