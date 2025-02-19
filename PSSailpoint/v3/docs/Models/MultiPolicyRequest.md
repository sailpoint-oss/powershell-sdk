---
id: multi-policy-request
title: MultiPolicyRequest
pagination_label: MultiPolicyRequest
sidebar_label: MultiPolicyRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MultiPolicyRequest', 'MultiPolicyRequest'] 
slug: /tools/sdk/powershell/v3/models/multi-policy-request
tags: ['SDK', 'Software Development Kit', 'MultiPolicyRequest', 'MultiPolicyRequest']
---


# MultiPolicyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FilteredPolicyList** | **[]String** | Multi-policy report will be run for this list of ids | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiPolicyRequest = Initialize-PSSailpoint.V3MultiPolicyRequest  -FilteredPolicyList null
$MultiPolicyRequest = @"{  "FilteredPolicyList": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToMultiPolicyRequest -Json $MultiPolicyRequest
```


[[Back to top]](#) 

