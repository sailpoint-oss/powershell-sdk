---
id: nerm-create-contributors-action-request
title: CreateContributorsActionRequest
pagination_label: CreateContributorsActionRequest
sidebar_label: CreateContributorsActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateContributorsActionRequest', 'NERMCreateContributorsActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-contributors-action-request
tags: ['SDK', 'Software Development Kit', 'CreateContributorsActionRequest', 'NERMCreateContributorsActionRequest']
---


# CreateContributorsActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**ContributorsAction**](contributors-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateContributorsActionRequest = Initialize-NERMCreateContributorsActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateContributorsActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

