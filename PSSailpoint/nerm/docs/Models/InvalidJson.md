---
id: nerm-invalid-json
title: InvalidJson
pagination_label: InvalidJson
sidebar_label: InvalidJson
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'InvalidJson', 'NERMInvalidJson'] 
slug: /tools/sdk/powershell/nerm/models/invalid-json
tags: ['SDK', 'Software Development Kit', 'InvalidJson', 'NERMInvalidJson']
---


# InvalidJson

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InvalidJson = Initialize-NERMInvalidJson  -VarError Invalid JSON syntax. Please check your syntax and try again.
```

- Convert the resource to JSON
```powershell
$InvalidJson | ConvertTo-JSON
```


[[Back to top]](#) 

