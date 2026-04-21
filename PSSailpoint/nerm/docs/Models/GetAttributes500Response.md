---
id: nerm-get-attributes500-response
title: GetAttributes500Response
pagination_label: GetAttributes500Response
sidebar_label: GetAttributes500Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetAttributes500Response', 'NERMGetAttributes500Response'] 
slug: /tools/sdk/powershell/nerm/models/get-attributes500-response
tags: ['SDK', 'Software Development Kit', 'GetAttributes500Response', 'NERMGetAttributes500Response']
---


# GetAttributes500Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAttributes500Response = Initialize-NERMGetAttributes500Response  -VarError Sorry something went wrong
```

- Convert the resource to JSON
```powershell
$GetAttributes500Response | ConvertTo-JSON
```


[[Back to top]](#) 

