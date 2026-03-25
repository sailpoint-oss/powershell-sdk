---
id: v2026-attr-sync-source
title: AttrSyncSource
pagination_label: AttrSyncSource
sidebar_label: AttrSyncSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AttrSyncSource', 'V2026AttrSyncSource'] 
slug: /tools/sdk/powershell/v2026/models/attr-sync-source
tags: ['SDK', 'Software Development Kit', 'AttrSyncSource', 'V2026AttrSyncSource']
---


# AttrSyncSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "SOURCE" ] | DTO type of target source for attribute synchronization. | [optional] 
**Id** | **String** | ID of target source for attribute synchronization. | [optional] 
**Name** | **String** | Human-readable name of target source for attribute synchronization. | [optional] 

## Examples

- Prepare the resource
```powershell
$AttrSyncSource = Initialize-V2026AttrSyncSource  -Type SOURCE `
 -Id 2c9180835d191a86015d28455b4b232a `
 -Name HR Active Directory
```

- Convert the resource to JSON
```powershell
$AttrSyncSource | ConvertTo-JSON
```


[[Back to top]](#) 

