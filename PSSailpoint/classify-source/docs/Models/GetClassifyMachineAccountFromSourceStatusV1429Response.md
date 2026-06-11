---
id: get-classify-machine-account-from-source-status-v1429-response
title: GetClassifyMachineAccountFromSourceStatusV1429Response
pagination_label: GetClassifyMachineAccountFromSourceStatusV1429Response
sidebar_label: GetClassifyMachineAccountFromSourceStatusV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetClassifyMachineAccountFromSourceStatusV1429Response', 'GetClassifyMachineAccountFromSourceStatusV1429Response'] 
slug: /tools/sdk/powershell/classifysourcev1/models/get-classify-machine-account-from-source-status-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetClassifyMachineAccountFromSourceStatusV1429Response', 'GetClassifyMachineAccountFromSourceStatusV1429Response']
---


# GetClassifyMachineAccountFromSourceStatusV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetClassifyMachineAccountFromSourceStatusV1429Response = Initialize-GetClassifyMachineAccountFromSourceStatusV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetClassifyMachineAccountFromSourceStatusV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

