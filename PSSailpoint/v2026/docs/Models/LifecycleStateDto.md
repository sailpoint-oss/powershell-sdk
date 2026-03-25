---
id: v2026-lifecycle-state-dto
title: LifecycleStateDto
pagination_label: LifecycleStateDto
sidebar_label: LifecycleStateDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LifecycleStateDto', 'V2026LifecycleStateDto'] 
slug: /tools/sdk/powershell/v2026/models/lifecycle-state-dto
tags: ['SDK', 'Software Development Kit', 'LifecycleStateDto', 'V2026LifecycleStateDto']
---


# LifecycleStateDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StateName** | **String** | The name of the lifecycle state | [required]
**ManuallyUpdated** | **Boolean** | Whether the lifecycle state has been manually or automatically set | [required]

## Examples

- Prepare the resource
```powershell
$LifecycleStateDto = Initialize-V2026LifecycleStateDto  -StateName active `
 -ManuallyUpdated true
```

- Convert the resource to JSON
```powershell
$LifecycleStateDto | ConvertTo-JSON
```


[[Back to top]](#) 

