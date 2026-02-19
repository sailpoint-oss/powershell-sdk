---
id: v2026-entitlement-access-model-metadata
title: EntitlementAccessModelMetadata
pagination_label: EntitlementAccessModelMetadata
sidebar_label: EntitlementAccessModelMetadata
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementAccessModelMetadata', 'V2026EntitlementAccessModelMetadata'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-access-model-metadata
tags: ['SDK', 'Software Development Kit', 'EntitlementAccessModelMetadata', 'V2026EntitlementAccessModelMetadata']
---


# EntitlementAccessModelMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**[]AccessModelMetadata**](access-model-metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementAccessModelMetadata = Initialize-V2026EntitlementAccessModelMetadata  -Attributes null
```

- Convert the resource to JSON
```powershell
$EntitlementAccessModelMetadata | ConvertTo-JSON
```


[[Back to top]](#) 

