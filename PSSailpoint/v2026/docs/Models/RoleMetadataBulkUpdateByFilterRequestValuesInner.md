---
id: v2026-role-metadata-bulk-update-by-filter-request-values-inner
title: RoleMetadataBulkUpdateByFilterRequestValuesInner
pagination_label: RoleMetadataBulkUpdateByFilterRequestValuesInner
sidebar_label: RoleMetadataBulkUpdateByFilterRequestValuesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleMetadataBulkUpdateByFilterRequestValuesInner', 'V2026RoleMetadataBulkUpdateByFilterRequestValuesInner'] 
slug: /tools/sdk/powershell/v2026/models/role-metadata-bulk-update-by-filter-request-values-inner
tags: ['SDK', 'Software Development Kit', 'RoleMetadataBulkUpdateByFilterRequestValuesInner', 'V2026RoleMetadataBulkUpdateByFilterRequestValuesInner']
---


# RoleMetadataBulkUpdateByFilterRequestValuesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttributeKey** | **String** | the key of metadata attribute | [optional] 
**Values** | **[]String** | the values of attribute to be updated | [required]

## Examples

- Prepare the resource
```powershell
$RoleMetadataBulkUpdateByFilterRequestValuesInner = Initialize-V2026RoleMetadataBulkUpdateByFilterRequestValuesInner  -AttributeKey iscFederalClassifications `
 -Values [secret]
```

- Convert the resource to JSON
```powershell
$RoleMetadataBulkUpdateByFilterRequestValuesInner | ConvertTo-JSON
```


[[Back to top]](#) 

