---
id: list-scheduled-search-v1429-response
title: ListScheduledSearchV1429Response
pagination_label: ListScheduledSearchV1429Response
sidebar_label: ListScheduledSearchV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListScheduledSearchV1429Response', 'ListScheduledSearchV1429Response'] 
slug: /tools/sdk/powershell/scheduledsearchv1/models/list-scheduled-search-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListScheduledSearchV1429Response', 'ListScheduledSearchV1429Response']
---


# ListScheduledSearchV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListScheduledSearchV1429Response = Initialize-ListScheduledSearchV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListScheduledSearchV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

