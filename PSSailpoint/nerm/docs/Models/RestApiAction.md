---
id: nerm-rest-api-action
title: RestApiAction
pagination_label: RestApiAction
sidebar_label: RestApiAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RestApiAction', 'NERMRestApiAction'] 
slug: /tools/sdk/powershell/nerm/models/rest-api-action
tags: ['SDK', 'Software Development Kit', 'RestApiAction', 'NERMRestApiAction']
---


# RestApiAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$RestApiAction = Initialize-NERMRestApiAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Makes a request to a Restful API. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$RestApiAction | ConvertTo-JSON
```


[[Back to top]](#) 

