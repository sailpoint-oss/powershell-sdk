---
id: send-declassify-machine-account-from-source-v1401-response
title: SendDeclassifyMachineAccountFromSourceV1401Response
pagination_label: SendDeclassifyMachineAccountFromSourceV1401Response
sidebar_label: SendDeclassifyMachineAccountFromSourceV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SendDeclassifyMachineAccountFromSourceV1401Response', 'SendDeclassifyMachineAccountFromSourceV1401Response'] 
slug: /tools/sdk/powershell/declassifysourcev1/models/send-declassify-machine-account-from-source-v1401-response
tags: ['SDK', 'Software Development Kit', 'SendDeclassifyMachineAccountFromSourceV1401Response', 'SendDeclassifyMachineAccountFromSourceV1401Response']
---


# SendDeclassifyMachineAccountFromSourceV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$SendDeclassifyMachineAccountFromSourceV1401Response = Initialize-SendDeclassifyMachineAccountFromSourceV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$SendDeclassifyMachineAccountFromSourceV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

