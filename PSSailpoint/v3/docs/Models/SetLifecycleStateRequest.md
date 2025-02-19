---
id: set-lifecycle-state-request
title: SetLifecycleStateRequest
pagination_label: SetLifecycleStateRequest
sidebar_label: SetLifecycleStateRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SetLifecycleStateRequest', 'SetLifecycleStateRequest'] 
slug: /tools/sdk/powershell/v3/models/set-lifecycle-state-request
tags: ['SDK', 'Software Development Kit', 'SetLifecycleStateRequest', 'SetLifecycleStateRequest']
---


# SetLifecycleStateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LifecycleStateId** | **String** | ID of the lifecycle state to set. | [optional] 

## Examples

- Prepare the resource
```powershell
$SetLifecycleStateRequest = Initialize-PSSailpoint.V3SetLifecycleStateRequest  -LifecycleStateId 2c9180877a86e408017a8c19fefe046c
$SetLifecycleStateRequest = @"{  "LifecycleStateId": "2c9180877a86e408017a8c19fefe046c" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToSetLifecycleStateRequest -Json $SetLifecycleStateRequest
```


[[Back to top]](#) 

