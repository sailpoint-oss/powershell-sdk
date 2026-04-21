---
id: nerm-submit-attribute-option-request
title: SubmitAttributeOptionRequest
pagination_label: SubmitAttributeOptionRequest
sidebar_label: SubmitAttributeOptionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitAttributeOptionRequest', 'NERMSubmitAttributeOptionRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-attribute-option-request
tags: ['SDK', 'Software Development Kit', 'SubmitAttributeOptionRequest', 'NERMSubmitAttributeOptionRequest']
---


# SubmitAttributeOptionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NeAttributeOption** | [**AttributeOption1**](attribute-option1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitAttributeOptionRequest = Initialize-NERMSubmitAttributeOptionRequest  -NeAttributeOption null
```

- Convert the resource to JSON
```powershell
$SubmitAttributeOptionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

