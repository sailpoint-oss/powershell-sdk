---
id: list-controls-v1429-response
title: ListControlsV1429Response
pagination_label: ListControlsV1429Response
sidebar_label: ListControlsV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListControlsV1429Response', 'ListControlsV1429Response'] 
slug: /tools/sdk/powershell/sodcontrols/models/list-controls-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListControlsV1429Response', 'ListControlsV1429Response']
---


# ListControlsV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListControlsV1429Response = Initialize-ListControlsV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListControlsV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

