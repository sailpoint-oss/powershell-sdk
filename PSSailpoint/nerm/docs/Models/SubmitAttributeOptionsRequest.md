---
id: nerm-submit-attribute-options-request
title: SubmitAttributeOptionsRequest
pagination_label: SubmitAttributeOptionsRequest
sidebar_label: SubmitAttributeOptionsRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitAttributeOptionsRequest', 'NERMSubmitAttributeOptionsRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-attribute-options-request
tags: ['SDK', 'Software Development Kit', 'SubmitAttributeOptionsRequest', 'NERMSubmitAttributeOptionsRequest']
---


# SubmitAttributeOptionsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NeAttributeOptions** | [**[]AttributeOption1**](attribute-option1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitAttributeOptionsRequest = Initialize-NERMSubmitAttributeOptionsRequest  -NeAttributeOptions null
```

- Convert the resource to JSON
```powershell
$SubmitAttributeOptionsRequest | ConvertTo-JSON
```


[[Back to top]](#) 

