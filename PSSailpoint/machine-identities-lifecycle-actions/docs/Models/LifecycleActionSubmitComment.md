---
id: lifecycle-action-submit-comment
title: LifecycleActionSubmitComment
pagination_label: LifecycleActionSubmitComment
sidebar_label: LifecycleActionSubmitComment
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LifecycleActionSubmitComment', 'LifecycleActionSubmitComment'] 
slug: /tools/sdk/powershell/machineidentitieslifecycleactions/models/lifecycle-action-submit-comment
tags: ['SDK', 'Software Development Kit', 'LifecycleActionSubmitComment', 'LifecycleActionSubmitComment']
---


# LifecycleActionSubmitComment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Free-text comment submitted with the lifecycle action request. | [required]

## Examples

- Prepare the resource
```powershell
$LifecycleActionSubmitComment = Initialize-LifecycleActionSubmitComment  -Comment Suspending agent until security review completes
```

- Convert the resource to JSON
```powershell
$LifecycleActionSubmitComment | ConvertTo-JSON
```


[[Back to top]](#) 

