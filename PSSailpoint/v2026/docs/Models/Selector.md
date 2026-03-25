---
id: v2026-selector
title: Selector
pagination_label: Selector
sidebar_label: Selector
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Selector', 'V2026Selector'] 
slug: /tools/sdk/powershell/v2026/models/selector
tags: ['SDK', 'Software Development Kit', 'Selector', 'V2026Selector']
---


# Selector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | The application id | [optional] 
**AccountMatchConfig** | [**SelectorAccountMatchConfig**](selector-account-match-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Selector = Initialize-V2026Selector  -ApplicationId 2c91808874ff91550175097daaec161c" `
 -AccountMatchConfig null
```

- Convert the resource to JSON
```powershell
$Selector | ConvertTo-JSON
```


[[Back to top]](#) 

