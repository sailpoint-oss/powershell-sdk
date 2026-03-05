---
id: v2026-get-access-request-config429-response
title: GetAccessRequestConfig429Response
pagination_label: GetAccessRequestConfig429Response
sidebar_label: GetAccessRequestConfig429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetAccessRequestConfig429Response', 'V2026GetAccessRequestConfig429Response'] 
slug: /tools/sdk/powershell/v2026/models/get-access-request-config429-response
tags: ['SDK', 'Software Development Kit', 'GetAccessRequestConfig429Response', 'V2026GetAccessRequestConfig429Response']
---


# GetAccessRequestConfig429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAccessRequestConfig429Response = Initialize-V2026GetAccessRequestConfig429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetAccessRequestConfig429Response | ConvertTo-JSON
```


[[Back to top]](#) 

