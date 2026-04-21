---
id: nerm-identity-proofing-action
title: IdentityProofingAction
pagination_label: IdentityProofingAction
sidebar_label: IdentityProofingAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityProofingAction', 'NERMIdentityProofingAction'] 
slug: /tools/sdk/powershell/nerm/models/identity-proofing-action
tags: ['SDK', 'Software Development Kit', 'IdentityProofingAction', 'NERMIdentityProofingAction']
---


# IdentityProofingAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$IdentityProofingAction = Initialize-NERMIdentityProofingAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Have the user account associated with this profile validate the identity data. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$IdentityProofingAction | ConvertTo-JSON
```


[[Back to top]](#) 

