---
id: create-common-access-v1429-response
title: CreateCommonAccessV1429Response
pagination_label: CreateCommonAccessV1429Response
sidebar_label: CreateCommonAccessV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateCommonAccessV1429Response', 'CreateCommonAccessV1429Response'] 
slug: /tools/sdk/powershell/iaicommonaccessv1/models/create-common-access-v1429-response
tags: ['SDK', 'Software Development Kit', 'CreateCommonAccessV1429Response', 'CreateCommonAccessV1429Response']
---


# CreateCommonAccessV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateCommonAccessV1429Response = Initialize-CreateCommonAccessV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$CreateCommonAccessV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

