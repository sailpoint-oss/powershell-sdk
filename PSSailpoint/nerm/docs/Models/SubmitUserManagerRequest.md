---
id: nerm-submit-user-manager-request
title: SubmitUserManagerRequest
pagination_label: SubmitUserManagerRequest
sidebar_label: SubmitUserManagerRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserManagerRequest', 'NERMSubmitUserManagerRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-manager-request
tags: ['SDK', 'Software Development Kit', 'SubmitUserManagerRequest', 'NERMSubmitUserManagerRequest']
---


# SubmitUserManagerRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserManager** | [**UserManager1**](user-manager1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserManagerRequest = Initialize-NERMSubmitUserManagerRequest  -UserManager null
```

- Convert the resource to JSON
```powershell
$SubmitUserManagerRequest | ConvertTo-JSON
```


[[Back to top]](#) 

