---
id: get-access-request-config-v1401-response
title: GetAccessRequestConfigV1401Response
pagination_label: GetAccessRequestConfigV1401Response
sidebar_label: GetAccessRequestConfigV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetAccessRequestConfigV1401Response', 'GetAccessRequestConfigV1401Response'] 
slug: /tools/sdk/powershell/accessrequestsv1/models/get-access-request-config-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetAccessRequestConfigV1401Response', 'GetAccessRequestConfigV1401Response']
---


# GetAccessRequestConfigV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAccessRequestConfigV1401Response = Initialize-GetAccessRequestConfigV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetAccessRequestConfigV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

