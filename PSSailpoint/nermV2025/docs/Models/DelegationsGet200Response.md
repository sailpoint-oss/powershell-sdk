---
id: nermv2025-delegations-get200-response
title: DelegationsGet200Response
pagination_label: DelegationsGet200Response
sidebar_label: DelegationsGet200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DelegationsGet200Response', 'NERMV2025DelegationsGet200Response'] 
slug: /tools/sdk/powershell/nermv2025/models/delegations-get200-response
tags: ['SDK', 'Software Development Kit', 'DelegationsGet200Response', 'NERMV2025DelegationsGet200Response']
---


# DelegationsGet200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Delegations** | [**[]Delegation**](delegation) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DelegationsGet200Response = Initialize-NERMV2025DelegationsGet200Response  -Delegations null
```

- Convert the resource to JSON
```powershell
$DelegationsGet200Response | ConvertTo-JSON
```


[[Back to top]](#) 

