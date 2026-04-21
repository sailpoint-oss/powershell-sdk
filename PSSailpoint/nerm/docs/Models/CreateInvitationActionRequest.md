---
id: nerm-create-invitation-action-request
title: CreateInvitationActionRequest
pagination_label: CreateInvitationActionRequest
sidebar_label: CreateInvitationActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateInvitationActionRequest', 'NERMCreateInvitationActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-invitation-action-request
tags: ['SDK', 'Software Development Kit', 'CreateInvitationActionRequest', 'NERMCreateInvitationActionRequest']
---


# CreateInvitationActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**InvitationAction**](invitation-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateInvitationActionRequest = Initialize-NERMCreateInvitationActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateInvitationActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

