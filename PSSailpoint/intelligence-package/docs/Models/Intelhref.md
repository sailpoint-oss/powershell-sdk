---
id: intelhref
title: Intelhref
pagination_label: Intelhref
sidebar_label: Intelhref
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelhref', 'Intelhref'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelhref
tags: ['SDK', 'Software Development Kit', 'Intelhref', 'Intelhref']
---


# Intelhref

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Href** | **String** | Target URI for the related Intelligence Package sub-resource or operation. | [required]

## Examples

- Prepare the resource
```powershell
$Intelhref = Initialize-Intelhref  -Href /v2026/intelligence/identities/ef38f94347e94562b5bb8424a56397d8/access
```

- Convert the resource to JSON
```powershell
$Intelhref | ConvertTo-JSON
```


[[Back to top]](#) 

