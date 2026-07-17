---
id: load-accounts-task
title: LoadAccountsTask
pagination_label: LoadAccountsTask
sidebar_label: LoadAccountsTask
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LoadAccountsTask', 'LoadAccountsTask'] 
slug: /tools/sdk/powershell/sources/models/load-accounts-task
tags: ['SDK', 'Software Development Kit', 'LoadAccountsTask', 'LoadAccountsTask']
---


# LoadAccountsTask

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | The status of the result | [optional] [default to $true]
**Task** | [**LoadAccountsTaskTask**](load-accounts-task-task) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadAccountsTask = Initialize-LoadAccountsTask  -Success true `
 -Task null
```

- Convert the resource to JSON
```powershell
$LoadAccountsTask | ConvertTo-JSON
```


[[Back to top]](#) 

