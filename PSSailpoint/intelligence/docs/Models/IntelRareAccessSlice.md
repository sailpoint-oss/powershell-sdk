---
id: intel-rare-access-slice
title: IntelRareAccessSlice
pagination_label: IntelRareAccessSlice
sidebar_label: IntelRareAccessSlice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelRareAccessSlice', 'IntelRareAccessSlice'] 
slug: /tools/sdk/powershell/intelligence/models/intel-rare-access-slice
tags: ['SDK', 'Software Development Kit', 'IntelRareAccessSlice', 'IntelRareAccessSlice']
---


# IntelRareAccessSlice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**[]IntelOutlierAccessItem**](intel-outlier-access-item) | First page of rare access items for the identity. | [required]
**Next** | **String** | Absolute URL to the next rareAccess page; present only when more results exist. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelRareAccessSlice = Initialize-IntelRareAccessSlice  -Items null `
 -Next https://tenant.example.api.cloud.sailpoint.com/v2026/intelligence/identities/ef38f94347e94562b5bb8424a56397d8/outliers/rare-access?limit=10&offset=10
```

- Convert the resource to JSON
```powershell
$IntelRareAccessSlice | ConvertTo-JSON
```


[[Back to top]](#) 

