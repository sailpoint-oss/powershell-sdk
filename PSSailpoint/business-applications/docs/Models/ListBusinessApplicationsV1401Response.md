---
id: list-business-applications-v1401-response
title: ListBusinessApplicationsV1401Response
pagination_label: ListBusinessApplicationsV1401Response
sidebar_label: ListBusinessApplicationsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListBusinessApplicationsV1401Response', 'ListBusinessApplicationsV1401Response'] 
slug: /tools/sdk/powershell/businessapplications/models/list-business-applications-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListBusinessApplicationsV1401Response', 'ListBusinessApplicationsV1401Response']
---


# ListBusinessApplicationsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListBusinessApplicationsV1401Response = Initialize-ListBusinessApplicationsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListBusinessApplicationsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

