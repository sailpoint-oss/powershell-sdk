---
id: nerm-submit-user-request
title: SubmitUserRequest
pagination_label: SubmitUserRequest
sidebar_label: SubmitUserRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserRequest', 'NERMSubmitUserRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-request
tags: ['SDK', 'Software Development Kit', 'SubmitUserRequest', 'NERMSubmitUserRequest']
---


# SubmitUserRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**User** | [**User1**](user1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserRequest = Initialize-NERMSubmitUserRequest  -User null
```

- Convert the resource to JSON
```powershell
$SubmitUserRequest | ConvertTo-JSON
```


[[Back to top]](#) 

