---
id: v2026-load-uncorrelated-accounts-task
title: LoadUncorrelatedAccountsTask
pagination_label: LoadUncorrelatedAccountsTask
sidebar_label: LoadUncorrelatedAccountsTask
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LoadUncorrelatedAccountsTask', 'V2026LoadUncorrelatedAccountsTask'] 
slug: /tools/sdk/powershell/v2026/models/load-uncorrelated-accounts-task
tags: ['SDK', 'Software Development Kit', 'LoadUncorrelatedAccountsTask', 'V2026LoadUncorrelatedAccountsTask']
---


# LoadUncorrelatedAccountsTask

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | The status of the result | [optional] [default to $true]
**Task** | [**LoadUncorrelatedAccountsTaskTask**](load-uncorrelated-accounts-task-task) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadUncorrelatedAccountsTask = Initialize-V2026LoadUncorrelatedAccountsTask  -Success true `
 -Task null
```

- Convert the resource to JSON
```powershell
$LoadUncorrelatedAccountsTask | ConvertTo-JSON
```


[[Back to top]](#) 

