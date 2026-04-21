---
id: nerm-create-synced-attribute201-response
title: CreateSyncedAttribute201Response
pagination_label: CreateSyncedAttribute201Response
sidebar_label: CreateSyncedAttribute201Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateSyncedAttribute201Response', 'NERMCreateSyncedAttribute201Response'] 
slug: /tools/sdk/powershell/nerm/models/create-synced-attribute201-response
tags: ['SDK', 'Software Development Kit', 'CreateSyncedAttribute201Response', 'NERMCreateSyncedAttribute201Response']
---


# CreateSyncedAttribute201Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SyncedAttribute** | [**SyncedAttribute**](synced-attribute) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateSyncedAttribute201Response = Initialize-NERMCreateSyncedAttribute201Response  -SyncedAttribute null
```

- Convert the resource to JSON
```powershell
$CreateSyncedAttribute201Response | ConvertTo-JSON
```


[[Back to top]](#) 

