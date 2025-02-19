---
id: beta-access-request-context
title: AccessRequestContext
pagination_label: AccessRequestContext
sidebar_label: AccessRequestContext
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequestContext', 'BetaAccessRequestContext'] 
slug: /tools/sdk/powershell/beta/models/access-request-context
tags: ['SDK', 'Software Development Kit', 'AccessRequestContext', 'BetaAccessRequestContext']
---


# AccessRequestContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextAttributes** | [**[]ContextAttributeDto**](context-attribute-dto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestContext = Initialize-PSSailpoint.BetaAccessRequestContext  -ContextAttributes null
$AccessRequestContext = @"{  "ContextAttributes": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToAccessRequestContext -Json $AccessRequestContext
```


[[Back to top]](#) 

