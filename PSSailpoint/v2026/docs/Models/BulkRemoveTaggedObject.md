---
id: v2026-bulk-remove-tagged-object
title: BulkRemoveTaggedObject
pagination_label: BulkRemoveTaggedObject
sidebar_label: BulkRemoveTaggedObject
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BulkRemoveTaggedObject', 'V2026BulkRemoveTaggedObject'] 
slug: /tools/sdk/powershell/v2026/models/bulk-remove-tagged-object
tags: ['SDK', 'Software Development Kit', 'BulkRemoveTaggedObject', 'V2026BulkRemoveTaggedObject']
---


# BulkRemoveTaggedObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectRefs** | [**[]TaggedObjectDto**](tagged-object-dto) |  | [optional] 
**Tags** | **[]String** | Label to be applied to an Object | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkRemoveTaggedObject = Initialize-V2026BulkRemoveTaggedObject  -ObjectRefs null `
 -Tags [BU_FINANCE, PCI]
```

- Convert the resource to JSON
```powershell
$BulkRemoveTaggedObject | ConvertTo-JSON
```


[[Back to top]](#) 

