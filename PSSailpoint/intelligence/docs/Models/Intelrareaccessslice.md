---
id: intelrareaccessslice
title: Intelrareaccessslice
pagination_label: Intelrareaccessslice
sidebar_label: Intelrareaccessslice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelrareaccessslice', 'Intelrareaccessslice'] 
slug: /tools/sdk/powershell/intelligence/models/intelrareaccessslice
tags: ['SDK', 'Software Development Kit', 'Intelrareaccessslice', 'Intelrareaccessslice']
---


# Intelrareaccessslice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**[]Inteloutlieraccessitem**](inteloutlieraccessitem) | First page of rare access items for the identity. | [required]
**Next** | **String** | Absolute URL to the next rareAccess page; present only when more results exist. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelrareaccessslice = Initialize-Intelrareaccessslice  -Items null `
 -Next https://tenant.example.api.cloud.sailpoint.com/v2026/intelligence/identities/ef38f94347e94562b5bb8424a56397d8/outliers/rare-access?limit=10&offset=10
```

- Convert the resource to JSON
```powershell
$Intelrareaccessslice | ConvertTo-JSON
```


[[Back to top]](#) 

