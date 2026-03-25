---
id: v2026-test-workflow-request
title: TestWorkflowRequest
pagination_label: TestWorkflowRequest
sidebar_label: TestWorkflowRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TestWorkflowRequest', 'V2026TestWorkflowRequest'] 
slug: /tools/sdk/powershell/v2026/models/test-workflow-request
tags: ['SDK', 'Software Development Kit', 'TestWorkflowRequest', 'V2026TestWorkflowRequest']
---


# TestWorkflowRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarInput** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | The test input for the workflow. | [required]

## Examples

- Prepare the resource
```powershell
$TestWorkflowRequest = Initialize-V2026TestWorkflowRequest  -VarInput null
```

- Convert the resource to JSON
```powershell
$TestWorkflowRequest | ConvertTo-JSON
```


[[Back to top]](#) 

