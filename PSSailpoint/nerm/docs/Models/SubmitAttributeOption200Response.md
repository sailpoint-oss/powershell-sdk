---
id: nerm-submit-attribute-option200-response
title: SubmitAttributeOption200Response
pagination_label: SubmitAttributeOption200Response
sidebar_label: SubmitAttributeOption200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitAttributeOption200Response', 'NERMSubmitAttributeOption200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-attribute-option200-response
tags: ['SDK', 'Software Development Kit', 'SubmitAttributeOption200Response', 'NERMSubmitAttributeOption200Response']
---


# SubmitAttributeOption200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NeAttributeOption** | [**AttributeOption**](attribute-option) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitAttributeOption200Response = Initialize-NERMSubmitAttributeOption200Response  -NeAttributeOption null
```

- Convert the resource to JSON
```powershell
$SubmitAttributeOption200Response | ConvertTo-JSON
```


[[Back to top]](#) 

