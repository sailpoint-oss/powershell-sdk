---
id: nerm-create-set-attributes-action-request
title: CreateSetAttributesActionRequest
pagination_label: CreateSetAttributesActionRequest
sidebar_label: CreateSetAttributesActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateSetAttributesActionRequest', 'NERMCreateSetAttributesActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-set-attributes-action-request
tags: ['SDK', 'Software Development Kit', 'CreateSetAttributesActionRequest', 'NERMCreateSetAttributesActionRequest']
---


# CreateSetAttributesActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**SetAttributesAction**](set-attributes-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateSetAttributesActionRequest = Initialize-NERMCreateSetAttributesActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateSetAttributesActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

