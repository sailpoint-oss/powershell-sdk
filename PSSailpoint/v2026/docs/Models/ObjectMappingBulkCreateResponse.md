---
id: v2026-object-mapping-bulk-create-response
title: ObjectMappingBulkCreateResponse
pagination_label: ObjectMappingBulkCreateResponse
sidebar_label: ObjectMappingBulkCreateResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ObjectMappingBulkCreateResponse', 'V2026ObjectMappingBulkCreateResponse'] 
slug: /tools/sdk/powershell/v2026/models/object-mapping-bulk-create-response
tags: ['SDK', 'Software Development Kit', 'ObjectMappingBulkCreateResponse', 'V2026ObjectMappingBulkCreateResponse']
---


# ObjectMappingBulkCreateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AddedObjects** | [**[]ObjectMappingResponse**](object-mapping-response) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ObjectMappingBulkCreateResponse = Initialize-V2026ObjectMappingBulkCreateResponse  -AddedObjects null
```

- Convert the resource to JSON
```powershell
$ObjectMappingBulkCreateResponse | ConvertTo-JSON
```


[[Back to top]](#) 

