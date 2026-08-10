---
id: intelidentitygraphlink
title: Intelidentitygraphlink
pagination_label: Intelidentitygraphlink
sidebar_label: Intelidentitygraphlink
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelidentitygraphlink', 'Intelidentitygraphlink'] 
slug: /tools/sdk/powershell/intelligence/models/intelidentitygraphlink
tags: ['SDK', 'Software Development Kit', 'Intelidentitygraphlink', 'Intelidentitygraphlink']
---


# Intelidentitygraphlink

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Href** | **String** | Absolute URL to the Identity Graph view. Omitted when the tenant lacks idg:base or when the IDN UI host cannot be resolved from sp-tenant. Query parameters include entity and id for the resolved identity.  | [required]

## Examples

- Prepare the resource
```powershell
$Intelidentitygraphlink = Initialize-Intelidentitygraphlink  -Href https://tenant.example.api.cloud.sailpoint.com/ui/identity-graph?entity=identity&id=ef38f94347e94562b5bb8424a56397d8
```

- Convert the resource to JSON
```powershell
$Intelidentitygraphlink | ConvertTo-JSON
```


[[Back to top]](#) 

