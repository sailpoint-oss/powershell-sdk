---
id: v2026-get-access-request-config401-response
title: GetAccessRequestConfig401Response
pagination_label: GetAccessRequestConfig401Response
sidebar_label: GetAccessRequestConfig401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetAccessRequestConfig401Response', 'V2026GetAccessRequestConfig401Response'] 
slug: /tools/sdk/powershell/v2026/models/get-access-request-config401-response
tags: ['SDK', 'Software Development Kit', 'GetAccessRequestConfig401Response', 'V2026GetAccessRequestConfig401Response']
---


# GetAccessRequestConfig401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAccessRequestConfig401Response = Initialize-V2026GetAccessRequestConfig401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetAccessRequestConfig401Response | ConvertTo-JSON
```


[[Back to top]](#) 

