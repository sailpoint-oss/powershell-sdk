---
id: v2025-identity1
title: Identity1
pagination_label: Identity1
sidebar_label: Identity1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Identity1', 'V2025Identity1'] 
slug: /tools/sdk/powershell/v2025/models/identity1
tags: ['SDK', 'Software Development Kit', 'Identity1', 'V2025Identity1']
---


# Identity1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the object | [optional] 
**Name** | **String** | Human-readable display name of the object | [optional] 

## Examples

- Prepare the resource
```powershell
$Identity1 = Initialize-V2025Identity1  -Id 2c91808380aa05580180aaaaf1940410 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$Identity1 | ConvertTo-JSON
```


[[Back to top]](#) 

