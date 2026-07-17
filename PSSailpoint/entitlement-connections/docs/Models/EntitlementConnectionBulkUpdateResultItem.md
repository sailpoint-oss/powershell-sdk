---
id: entitlement-connection-bulk-update-result-item
title: EntitlementConnectionBulkUpdateResultItem
pagination_label: EntitlementConnectionBulkUpdateResultItem
sidebar_label: EntitlementConnectionBulkUpdateResultItem
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementConnectionBulkUpdateResultItem', 'EntitlementConnectionBulkUpdateResultItem'] 
slug: /tools/sdk/powershell/entitlementconnections/models/entitlement-connection-bulk-update-result-item
tags: ['SDK', 'Software Development Kit', 'EntitlementConnectionBulkUpdateResultItem', 'EntitlementConnectionBulkUpdateResultItem']
---


# EntitlementConnectionBulkUpdateResultItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionId** | **String** | Connection ID processed in this row. | [optional] 
**Type** | **String** | Requested or resulting connection type for the row. | [optional] 
**Status** | **Int32** | Item-level result status code. | [optional] 
**Description** | **String** | Item-level result message. | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementConnectionBulkUpdateResultItem = Initialize-EntitlementConnectionBulkUpdateResultItem  -ConnectionId d532fa5cb15748e2873c6a01e5923ec4 `
 -Type JIT `
 -Status 201 `
 -Description success
```

- Convert the resource to JSON
```powershell
$EntitlementConnectionBulkUpdateResultItem | ConvertTo-JSON
```


[[Back to top]](#) 

