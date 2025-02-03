---
id: beta-multi-policy-request
title: MultiPolicyRequest
pagination_label: MultiPolicyRequest
sidebar_label: MultiPolicyRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MultiPolicyRequest', 'BetaMultiPolicyRequest'] 
slug: /tools/sdk/powershell/beta/models/multi-policy-request
tags: ['SDK', 'Software Development Kit', 'MultiPolicyRequest', 'BetaMultiPolicyRequest']
---


# MultiPolicyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FilteredPolicyList** |  Pointer to **[]String** | Multi-policy report will be run for this list of ids | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiPolicyRequest = Initialize-PSSailpoint.BetaMultiPolicyRequest  -FilteredPolicyList null
```

- Convert the resource to JSON
```powershell
$MultiPolicyRequest | ConvertTo-JSON
```


[[Back to top]](#) 

