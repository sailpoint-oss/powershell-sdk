---
id: nerm-submit-profile-type-request
title: SubmitProfileTypeRequest
pagination_label: SubmitProfileTypeRequest
sidebar_label: SubmitProfileTypeRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitProfileTypeRequest', 'NERMSubmitProfileTypeRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-profile-type-request
tags: ['SDK', 'Software Development Kit', 'SubmitProfileTypeRequest', 'NERMSubmitProfileTypeRequest']
---


# SubmitProfileTypeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileType** | [**ProfileType1**](profile-type1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitProfileTypeRequest = Initialize-NERMSubmitProfileTypeRequest  -ProfileType null
```

- Convert the resource to JSON
```powershell
$SubmitProfileTypeRequest | ConvertTo-JSON
```


[[Back to top]](#) 

