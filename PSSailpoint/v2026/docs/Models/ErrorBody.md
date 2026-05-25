---
id: v2026-error-body
title: ErrorBody
pagination_label: ErrorBody
sidebar_label: ErrorBody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ErrorBody', 'V2026ErrorBody'] 
slug: /tools/sdk/powershell/v2026/models/error-body
tags: ['SDK', 'Software Development Kit', 'ErrorBody', 'V2026ErrorBody']
---


# ErrorBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetailCode** | **String** | Machine-readable error code returned by the Intelligence Package service. | [optional] 
**Message** | **String** | Human-readable explanation of the error suitable for client logging. | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorBody = Initialize-V2026ErrorBody  -DetailCode IDC_BAD_REQUEST `
 -Message The filters query parameter is required and cannot be empty.
```

- Convert the resource to JSON
```powershell
$ErrorBody | ConvertTo-JSON
```


[[Back to top]](#) 

