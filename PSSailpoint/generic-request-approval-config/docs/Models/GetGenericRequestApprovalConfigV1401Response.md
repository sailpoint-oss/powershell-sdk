---
id: get-generic-request-approval-config-v1401-response
title: GetGenericRequestApprovalConfigV1401Response
pagination_label: GetGenericRequestApprovalConfigV1401Response
sidebar_label: GetGenericRequestApprovalConfigV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetGenericRequestApprovalConfigV1401Response', 'GetGenericRequestApprovalConfigV1401Response'] 
slug: /tools/sdk/powershell/genericrequestapprovalconfig/models/get-generic-request-approval-config-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetGenericRequestApprovalConfigV1401Response', 'GetGenericRequestApprovalConfigV1401Response']
---


# GetGenericRequestApprovalConfigV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetGenericRequestApprovalConfigV1401Response = Initialize-GetGenericRequestApprovalConfigV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetGenericRequestApprovalConfigV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

