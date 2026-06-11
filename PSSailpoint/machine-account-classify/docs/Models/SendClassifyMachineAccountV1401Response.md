---
id: send-classify-machine-account-v1401-response
title: SendClassifyMachineAccountV1401Response
pagination_label: SendClassifyMachineAccountV1401Response
sidebar_label: SendClassifyMachineAccountV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SendClassifyMachineAccountV1401Response', 'SendClassifyMachineAccountV1401Response'] 
slug: /tools/sdk/powershell/machineaccountclassifyv1/models/send-classify-machine-account-v1401-response
tags: ['SDK', 'Software Development Kit', 'SendClassifyMachineAccountV1401Response', 'SendClassifyMachineAccountV1401Response']
---


# SendClassifyMachineAccountV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$SendClassifyMachineAccountV1401Response = Initialize-SendClassifyMachineAccountV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$SendClassifyMachineAccountV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

