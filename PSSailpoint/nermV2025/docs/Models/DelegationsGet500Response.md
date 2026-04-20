---
id: nermv2025-delegations-get500-response
title: DelegationsGet500Response
pagination_label: DelegationsGet500Response
sidebar_label: DelegationsGet500Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DelegationsGet500Response', 'NERMV2025DelegationsGet500Response'] 
slug: /tools/sdk/powershell/nermv2025/models/delegations-get500-response
tags: ['SDK', 'Software Development Kit', 'DelegationsGet500Response', 'NERMV2025DelegationsGet500Response']
---


# DelegationsGet500Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$DelegationsGet500Response = Initialize-NERMV2025DelegationsGet500Response  -VarError Sorry something went wrong
```

- Convert the resource to JSON
```powershell
$DelegationsGet500Response | ConvertTo-JSON
```


[[Back to top]](#) 

