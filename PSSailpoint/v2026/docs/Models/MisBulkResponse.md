---
id: v2026-mis-bulk-response
title: MisBulkResponse
pagination_label: MisBulkResponse
sidebar_label: MisBulkResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MisBulkResponse', 'V2026MisBulkResponse'] 
slug: /tools/sdk/powershell/v2026/models/mis-bulk-response
tags: ['SDK', 'Software Development Kit', 'MisBulkResponse', 'V2026MisBulkResponse']
---


# MisBulkResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Machine identity or machine account ID from the request. | [required]
**Status** | **Int32** | HTTP status code for this ID. For example, 200 indicates success, 404 indicates the resource was not found or is not accessible to the caller, and 409 indicates a conflict such as a duplicate ID in the batch. | [required]
**Message** | **String** | Human-readable detail for this result. | [optional] 

## Examples

- Prepare the resource
```powershell
$MisBulkResponse = Initialize-V2026MisBulkResponse  -Id ef38f94347e94562b5bb8424a56397d8 `
 -Status 200 `
 -Message Updated successfully.
```

- Convert the resource to JSON
```powershell
$MisBulkResponse | ConvertTo-JSON
```


[[Back to top]](#) 

