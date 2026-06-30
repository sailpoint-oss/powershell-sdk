---
id: nerm-get-attributes400-response
title: GetAttributes400Response
pagination_label: GetAttributes400Response
sidebar_label: GetAttributes400Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetAttributes400Response', 'NERMGetAttributes400Response'] 
slug: /tools/sdk/powershell/nerm/models/get-attributes400-response
tags: ['SDK', 'Software Development Kit', 'GetAttributes400Response', 'NERMGetAttributes400Response']
---


# GetAttributes400Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **SystemCollectionsHashtable** |  | [optional] 
**Errors** | **SystemCollectionsHashtable** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAttributes400Response = Initialize-NERMGetAttributes400Response  -VarError The <object> failed to create/update `
 -Errors {attribute=can't be blank}
```

- Convert the resource to JSON
```powershell
$GetAttributes400Response | ConvertTo-JSON
```


[[Back to top]](#) 

