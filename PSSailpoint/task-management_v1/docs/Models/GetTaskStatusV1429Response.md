---
id: get-task-status-v1429-response
title: GetTaskStatusV1429Response
pagination_label: GetTaskStatusV1429Response
sidebar_label: GetTaskStatusV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetTaskStatusV1429Response', 'GetTaskStatusV1429Response'] 
slug: /tools/sdk/powershell/taskmanagementv1/models/get-task-status-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetTaskStatusV1429Response', 'GetTaskStatusV1429Response']
---


# GetTaskStatusV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetTaskStatusV1429Response = Initialize-GetTaskStatusV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetTaskStatusV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

