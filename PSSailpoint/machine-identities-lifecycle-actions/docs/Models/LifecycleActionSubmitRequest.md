---
id: lifecycle-action-submit-request
title: LifecycleActionSubmitRequest
pagination_label: LifecycleActionSubmitRequest
sidebar_label: LifecycleActionSubmitRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LifecycleActionSubmitRequest', 'LifecycleActionSubmitRequest'] 
slug: /tools/sdk/powershell/machineidentitieslifecycleactions/models/lifecycle-action-submit-request
tags: ['SDK', 'Software Development Kit', 'LifecycleActionSubmitRequest', 'LifecycleActionSubmitRequest']
---


# LifecycleActionSubmitRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **Lifecycleaction** |  | [required]
**Comments** | [**[]LifecycleActionSubmitComment**](lifecycle-action-submit-comment) | Optional submit-time comments. At most 10 comments are allowed per request; each comment must be non-empty and at most 1000 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$LifecycleActionSubmitRequest = Initialize-LifecycleActionSubmitRequest  -Action null `
 -Comments null
```

- Convert the resource to JSON
```powershell
$LifecycleActionSubmitRequest | ConvertTo-JSON
```


[[Back to top]](#) 

