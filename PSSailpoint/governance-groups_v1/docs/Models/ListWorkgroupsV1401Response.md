---
id: list-workgroups-v1401-response
title: ListWorkgroupsV1401Response
pagination_label: ListWorkgroupsV1401Response
sidebar_label: ListWorkgroupsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListWorkgroupsV1401Response', 'ListWorkgroupsV1401Response'] 
slug: /tools/sdk/powershell/governancegroupsv1/models/list-workgroups-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListWorkgroupsV1401Response', 'ListWorkgroupsV1401Response']
---


# ListWorkgroupsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListWorkgroupsV1401Response = Initialize-ListWorkgroupsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListWorkgroupsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

