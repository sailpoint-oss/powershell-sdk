---
id: source-agent-deletion-task-status-target
title: SourceAgentDeletionTaskStatusTarget
pagination_label: SourceAgentDeletionTaskStatusTarget
sidebar_label: SourceAgentDeletionTaskStatusTarget
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceAgentDeletionTaskStatusTarget', 'SourceAgentDeletionTaskStatusTarget'] 
slug: /tools/sdk/powershell/sources/models/source-agent-deletion-task-status-target
tags: ['SDK', 'Software Development Kit', 'SourceAgentDeletionTaskStatusTarget', 'SourceAgentDeletionTaskStatusTarget']
---


# SourceAgentDeletionTaskStatusTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceAgentDeletionTaskStatusTarget = Initialize-SourceAgentDeletionTaskStatusTarget  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$SourceAgentDeletionTaskStatusTarget | ConvertTo-JSON
```


[[Back to top]](#) 

