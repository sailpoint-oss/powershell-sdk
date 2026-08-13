---
id: list-business-applications-v1429-response
title: ListBusinessApplicationsV1429Response
pagination_label: ListBusinessApplicationsV1429Response
sidebar_label: ListBusinessApplicationsV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListBusinessApplicationsV1429Response', 'ListBusinessApplicationsV1429Response'] 
slug: /tools/sdk/powershell/businessapplications/models/list-business-applications-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListBusinessApplicationsV1429Response', 'ListBusinessApplicationsV1429Response']
---


# ListBusinessApplicationsV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListBusinessApplicationsV1429Response = Initialize-ListBusinessApplicationsV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListBusinessApplicationsV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

