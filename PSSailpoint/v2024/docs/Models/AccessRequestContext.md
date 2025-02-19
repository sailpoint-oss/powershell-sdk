---
id: v2024-access-request-context
title: AccessRequestContext
pagination_label: AccessRequestContext
sidebar_label: AccessRequestContext
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequestContext', 'V2024AccessRequestContext'] 
slug: /tools/sdk/powershell/v2024/models/access-request-context
tags: ['SDK', 'Software Development Kit', 'AccessRequestContext', 'V2024AccessRequestContext']
---


# AccessRequestContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextAttributes** | [**[]ContextAttributeDto**](context-attribute-dto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestContext = Initialize-PSSailpoint.V2024AccessRequestContext  -ContextAttributes null
$AccessRequestContext = @"{  "ContextAttributes": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToAccessRequestContext -Json $AccessRequestContext
```


[[Back to top]](#) 

