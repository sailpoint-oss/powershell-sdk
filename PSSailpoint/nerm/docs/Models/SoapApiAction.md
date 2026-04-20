---
id: nerm-soap-api-action
title: SoapApiAction
pagination_label: SoapApiAction
sidebar_label: SoapApiAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SoapApiAction', 'NERMSoapApiAction'] 
slug: /tools/sdk/powershell/nerm/models/soap-api-action
tags: ['SDK', 'Software Development Kit', 'SoapApiAction', 'NERMSoapApiAction']
---


# SoapApiAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$SoapApiAction = Initialize-NERMSoapApiAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Makes a request to a SOAP API. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$SoapApiAction | ConvertTo-JSON
```


[[Back to top]](#) 

