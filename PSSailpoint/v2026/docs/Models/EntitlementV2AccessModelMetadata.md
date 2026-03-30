---
id: v2026-entitlement-v2-access-model-metadata
title: EntitlementV2AccessModelMetadata
pagination_label: EntitlementV2AccessModelMetadata
sidebar_label: EntitlementV2AccessModelMetadata
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementV2AccessModelMetadata', 'V2026EntitlementV2AccessModelMetadata'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-v2-access-model-metadata
tags: ['SDK', 'Software Development Kit', 'EntitlementV2AccessModelMetadata', 'V2026EntitlementV2AccessModelMetadata']
---


# EntitlementV2AccessModelMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**[]AccessModelMetadata**](access-model-metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementV2AccessModelMetadata = Initialize-V2026EntitlementV2AccessModelMetadata  -Attributes null
```

- Convert the resource to JSON
```powershell
$EntitlementV2AccessModelMetadata | ConvertTo-JSON
```


[[Back to top]](#) 

