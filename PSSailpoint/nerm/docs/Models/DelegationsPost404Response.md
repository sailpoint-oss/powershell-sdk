---
id: nerm-delegations-post404-response
title: DelegationsPost404Response
pagination_label: DelegationsPost404Response
sidebar_label: DelegationsPost404Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DelegationsPost404Response', 'NERMDelegationsPost404Response'] 
slug: /tools/sdk/powershell/nerm/models/delegations-post404-response
tags: ['SDK', 'Software Development Kit', 'DelegationsPost404Response', 'NERMDelegationsPost404Response']
---


# DelegationsPost404Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | The requested record, either ID or UID, was not found | [optional] 

## Examples

- Prepare the resource
```powershell
$DelegationsPost404Response = Initialize-NERMDelegationsPost404Response  -VarError The requested Profile was not found
```

- Convert the resource to JSON
```powershell
$DelegationsPost404Response | ConvertTo-JSON
```


[[Back to top]](#) 

