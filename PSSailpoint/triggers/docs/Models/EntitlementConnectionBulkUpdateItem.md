---
id: v2026-entitlement-connection-bulk-update-item
title: EntitlementConnectionBulkUpdateItem
pagination_label: EntitlementConnectionBulkUpdateItem
sidebar_label: EntitlementConnectionBulkUpdateItem
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementConnectionBulkUpdateItem', 'V2026EntitlementConnectionBulkUpdateItem'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-connection-bulk-update-item
tags: ['SDK', 'Software Development Kit', 'EntitlementConnectionBulkUpdateItem', 'V2026EntitlementConnectionBulkUpdateItem']
---


# EntitlementConnectionBulkUpdateItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionId** | **String** | Connection ID to update. | [required]
**Type** |  **Enum** [  "JIT",    "STANDING" ] | Target connection type. | [required]

## Examples

- Prepare the resource
```powershell
$EntitlementConnectionBulkUpdateItem = Initialize-V2026EntitlementConnectionBulkUpdateItem  -ConnectionId d532fa5cb15748e2873c6a01e5923ec4 `
 -Type JIT
```

- Convert the resource to JSON
```powershell
$EntitlementConnectionBulkUpdateItem | ConvertTo-JSON
```


[[Back to top]](#) 

