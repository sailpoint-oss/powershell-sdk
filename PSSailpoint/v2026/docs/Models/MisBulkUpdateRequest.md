---
id: v2026-mis-bulk-update-request
title: MisBulkUpdateRequest
pagination_label: MisBulkUpdateRequest
sidebar_label: MisBulkUpdateRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MisBulkUpdateRequest', 'V2026MisBulkUpdateRequest'] 
slug: /tools/sdk/powershell/v2026/models/mis-bulk-update-request
tags: ['SDK', 'Software Development Kit', 'MisBulkUpdateRequest', 'V2026MisBulkUpdateRequest']
---


# MisBulkUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **[]String** | Machine identity or machine account IDs to update. | [required]
**JsonPatch** | [**[]JsonPatchOperation**](json-patch-operation) | JSON Patch operations to apply to each ID in the request (RFC 6902). | [required]

## Examples

- Prepare the resource
```powershell
$MisBulkUpdateRequest = Initialize-V2026MisBulkUpdateRequest  -Ids [ef38f94347e94562b5bb8424a56397d8] `
 -JsonPatch [{op=replace, path=/description, value=Updated description}]
```

- Convert the resource to JSON
```powershell
$MisBulkUpdateRequest | ConvertTo-JSON
```


[[Back to top]](#) 

