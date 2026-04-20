---
id: nerm-delegations-get200-response
title: DelegationsGet200Response
pagination_label: DelegationsGet200Response
sidebar_label: DelegationsGet200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DelegationsGet200Response', 'NERMDelegationsGet200Response'] 
slug: /tools/sdk/powershell/nerm/models/delegations-get200-response
tags: ['SDK', 'Software Development Kit', 'DelegationsGet200Response', 'NERMDelegationsGet200Response']
---


# DelegationsGet200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Delegations** | [**[]Delegation**](delegation) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DelegationsGet200Response = Initialize-NERMDelegationsGet200Response  -Delegations null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$DelegationsGet200Response | ConvertTo-JSON
```


[[Back to top]](#) 

