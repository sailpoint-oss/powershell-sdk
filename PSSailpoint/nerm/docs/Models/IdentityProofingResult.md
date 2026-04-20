---
id: nerm-identity-proofing-result
title: IdentityProofingResult
pagination_label: IdentityProofingResult
sidebar_label: IdentityProofingResult
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityProofingResult', 'NERMIdentityProofingResult'] 
slug: /tools/sdk/powershell/nerm/models/identity-proofing-result
tags: ['SDK', 'Software Development Kit', 'IdentityProofingResult', 'NERMIdentityProofingResult']
---


# IdentityProofingResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**IdentityProofingActionId** | **String** |  | [optional] 
**WorkflowSessionId** | **String** |  | [optional] 
**ProfileId** | **String** |  | [optional] 
**ProofingWorkflow** | **String** |  | [optional] 
**Result** |  **Enum** [  "pending",    "pass",    "fail" ] |  | [optional] 
**ProofingAttributes** | **map[string]String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProofingResult = Initialize-NERMIdentityProofingResult  -Id null `
 -IdentityProofingActionId null `
 -WorkflowSessionId null `
 -ProfileId null `
 -ProofingWorkflow null `
 -Result null `
 -ProofingAttributes {result=approve} `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$IdentityProofingResult | ConvertTo-JSON
```


[[Back to top]](#) 

