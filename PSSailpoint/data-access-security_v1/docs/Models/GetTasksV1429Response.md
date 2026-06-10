---
id: get-tasks-v1429-response
title: GetTasksV1429Response
pagination_label: GetTasksV1429Response
sidebar_label: GetTasksV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetTasksV1429Response', 'GetTasksV1429Response'] 
slug: /tools/sdk/powershell/dataaccesssecurityv1/models/get-tasks-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetTasksV1429Response', 'GetTasksV1429Response']
---


# GetTasksV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetTasksV1429Response = Initialize-GetTasksV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetTasksV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

