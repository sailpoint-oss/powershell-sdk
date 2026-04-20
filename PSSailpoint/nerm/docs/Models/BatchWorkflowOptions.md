---
id: nerm-batch-workflow-options
title: BatchWorkflowOptions
pagination_label: BatchWorkflowOptions
sidebar_label: BatchWorkflowOptions
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BatchWorkflowOptions', 'NERMBatchWorkflowOptions'] 
slug: /tools/sdk/powershell/nerm/models/batch-workflow-options
tags: ['SDK', 'Software Development Kit', 'BatchWorkflowOptions', 'NERMBatchWorkflowOptions']
---


# BatchWorkflowOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllProfiles** |  **Enum** [  "true",    "false" ] | Used for batch workflows. | [optional] 
**MultipleRequests** |  **Enum** [  "true",    "false" ] | Used for batch workflows for if multiple requests. | [optional] 

## Examples

- Prepare the resource
```powershell
$BatchWorkflowOptions = Initialize-NERMBatchWorkflowOptions  -AllProfiles true `
 -MultipleRequests false
```

- Convert the resource to JSON
```powershell
$BatchWorkflowOptions | ConvertTo-JSON
```


[[Back to top]](#) 

