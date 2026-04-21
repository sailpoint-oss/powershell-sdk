---
id: nerm-synced-attribute
title: SyncedAttribute
pagination_label: SyncedAttribute
sidebar_label: SyncedAttribute
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SyncedAttribute', 'NERMSyncedAttribute'] 
slug: /tools/sdk/powershell/nerm/models/synced-attribute
tags: ['SDK', 'Software Development Kit', 'SyncedAttribute', 'NERMSyncedAttribute']
---


# SyncedAttribute

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | synced attribute's ID | [optional] [readonly] 
**ProfileTypeId** | **String** | Profile type ID of synced attribute | [optional] [readonly] 
**NeAttributeId** | **String** | Ne attribute ID of synced attribute | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SyncedAttribute = Initialize-NERMSyncedAttribute  -Id 1246d8b3-ac29-4015-8154-dea4434a73fa `
 -ProfileTypeId 1246d8b3-ac29-4015-8154-dea4434a73fa `
 -NeAttributeId 1246d8b3-ac29-4015-8154-dea4434a73fa
```

- Convert the resource to JSON
```powershell
$SyncedAttribute | ConvertTo-JSON
```


[[Back to top]](#) 

