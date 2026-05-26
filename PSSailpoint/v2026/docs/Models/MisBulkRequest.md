---
id: v2026-mis-bulk-request
title: MisBulkRequest
pagination_label: MisBulkRequest
sidebar_label: MisBulkRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MisBulkRequest', 'V2026MisBulkRequest'] 
slug: /tools/sdk/powershell/v2026/models/mis-bulk-request
tags: ['SDK', 'Software Development Kit', 'MisBulkRequest', 'V2026MisBulkRequest']
---


# MisBulkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **[]String** | Machine identity or machine account IDs to include in the bulk operation. | [required]

## Examples

- Prepare the resource
```powershell
$MisBulkRequest = Initialize-V2026MisBulkRequest  -Ids [ef38f94347e94562b5bb8424a56397d8, 2c91808a7813090a017814121919ecca]
```

- Convert the resource to JSON
```powershell
$MisBulkRequest | ConvertTo-JSON
```


[[Back to top]](#) 

