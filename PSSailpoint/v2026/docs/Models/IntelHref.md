---
id: v2026-intel-href
title: IntelHref
pagination_label: IntelHref
sidebar_label: IntelHref
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelHref', 'V2026IntelHref'] 
slug: /tools/sdk/powershell/v2026/models/intel-href
tags: ['SDK', 'Software Development Kit', 'IntelHref', 'V2026IntelHref']
---


# IntelHref

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Href** | **String** | Target URI for the related Intelligence Package sub-resource or operation. | [required]

## Examples

- Prepare the resource
```powershell
$IntelHref = Initialize-V2026IntelHref  -Href /v2026/intelligence/identities/ef38f94347e94562b5bb8424a56397d8/access
```

- Convert the resource to JSON
```powershell
$IntelHref | ConvertTo-JSON
```


[[Back to top]](#) 

