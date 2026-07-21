---
id: intel-access-history-access-items-slice
title: IntelAccessHistoryAccessItemsSlice
pagination_label: IntelAccessHistoryAccessItemsSlice
sidebar_label: IntelAccessHistoryAccessItemsSlice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelAccessHistoryAccessItemsSlice', 'IntelAccessHistoryAccessItemsSlice'] 
slug: /tools/sdk/powershell/intelligence/models/intel-access-history-access-items-slice
tags: ['SDK', 'Software Development Kit', 'IntelAccessHistoryAccessItemsSlice', 'IntelAccessHistoryAccessItemsSlice']
---


# IntelAccessHistoryAccessItemsSlice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | **[]IntelAccessItemHistoryEvent** | First page of access-item history events for the identity. | [required]
**Next** | **String** | Absolute URL to the next access-items page; present only when more results exist. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelAccessHistoryAccessItemsSlice = Initialize-IntelAccessHistoryAccessItemsSlice  -Items null `
 -Next https://tenant.example.api.cloud.sailpoint.com/intelligence/identities/v1/ef38f94347e94562b5bb8424a56397d8/access-history/access-items?limit=10&offset=10
```

- Convert the resource to JSON
```powershell
$IntelAccessHistoryAccessItemsSlice | ConvertTo-JSON
```


[[Back to top]](#) 

