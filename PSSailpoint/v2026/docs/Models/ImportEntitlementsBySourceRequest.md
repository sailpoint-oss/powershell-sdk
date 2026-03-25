---
id: v2026-import-entitlements-by-source-request
title: ImportEntitlementsBySourceRequest
pagination_label: ImportEntitlementsBySourceRequest
sidebar_label: ImportEntitlementsBySourceRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ImportEntitlementsBySourceRequest', 'V2026ImportEntitlementsBySourceRequest'] 
slug: /tools/sdk/powershell/v2026/models/import-entitlements-by-source-request
tags: ['SDK', 'Software Development Kit', 'ImportEntitlementsBySourceRequest', 'V2026ImportEntitlementsBySourceRequest']
---


# ImportEntitlementsBySourceRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CsvFile** | **System.IO.FileInfo** | The CSV file containing the source entitlements to aggregate. | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportEntitlementsBySourceRequest = Initialize-V2026ImportEntitlementsBySourceRequest  -CsvFile null
```

- Convert the resource to JSON
```powershell
$ImportEntitlementsBySourceRequest | ConvertTo-JSON
```


[[Back to top]](#) 

