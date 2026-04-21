---
id: nerm-create-identity-proofing-action-request
title: CreateIdentityProofingActionRequest
pagination_label: CreateIdentityProofingActionRequest
sidebar_label: CreateIdentityProofingActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateIdentityProofingActionRequest', 'NERMCreateIdentityProofingActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-identity-proofing-action-request
tags: ['SDK', 'Software Development Kit', 'CreateIdentityProofingActionRequest', 'NERMCreateIdentityProofingActionRequest']
---


# CreateIdentityProofingActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**IdentityProofingAction**](identity-proofing-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateIdentityProofingActionRequest = Initialize-NERMCreateIdentityProofingActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateIdentityProofingActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

