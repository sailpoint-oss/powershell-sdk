---
id: v2026-bulk-tagged-object-response
title: BulkTaggedObjectResponse
pagination_label: BulkTaggedObjectResponse
sidebar_label: BulkTaggedObjectResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BulkTaggedObjectResponse', 'V2026BulkTaggedObjectResponse'] 
slug: /tools/sdk/powershell/v2026/models/bulk-tagged-object-response
tags: ['SDK', 'Software Development Kit', 'BulkTaggedObjectResponse', 'V2026BulkTaggedObjectResponse']
---


# BulkTaggedObjectResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectRefs** | [**[]TaggedObjectDto**](tagged-object-dto) |  | [optional] 
**Tags** | **[]String** | Label to be applied to an Object | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkTaggedObjectResponse = Initialize-V2026BulkTaggedObjectResponse  -ObjectRefs null `
 -Tags [BU_FINANCE, PCI]
```

- Convert the resource to JSON
```powershell
$BulkTaggedObjectResponse | ConvertTo-JSON
```


[[Back to top]](#) 

