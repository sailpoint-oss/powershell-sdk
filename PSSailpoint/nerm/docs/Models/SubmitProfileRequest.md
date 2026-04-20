---
id: nerm-submit-profile-request
title: SubmitProfileRequest
pagination_label: SubmitProfileRequest
sidebar_label: SubmitProfileRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitProfileRequest', 'NERMSubmitProfileRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-profile-request
tags: ['SDK', 'Software Development Kit', 'SubmitProfileRequest', 'NERMSubmitProfileRequest']
---


# SubmitProfileRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarProfile** | [**Profile1**](profile1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitProfileRequest = Initialize-NERMSubmitProfileRequest  -VarProfile null
```

- Convert the resource to JSON
```powershell
$SubmitProfileRequest | ConvertTo-JSON
```


[[Back to top]](#) 

