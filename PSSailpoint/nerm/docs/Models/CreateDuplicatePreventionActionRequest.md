---
id: nerm-create-duplicate-prevention-action-request
title: CreateDuplicatePreventionActionRequest
pagination_label: CreateDuplicatePreventionActionRequest
sidebar_label: CreateDuplicatePreventionActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateDuplicatePreventionActionRequest', 'NERMCreateDuplicatePreventionActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-duplicate-prevention-action-request
tags: ['SDK', 'Software Development Kit', 'CreateDuplicatePreventionActionRequest', 'NERMCreateDuplicatePreventionActionRequest']
---


# CreateDuplicatePreventionActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**DuplicatePreventionAction**](duplicate-prevention-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDuplicatePreventionActionRequest = Initialize-NERMCreateDuplicatePreventionActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateDuplicatePreventionActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

