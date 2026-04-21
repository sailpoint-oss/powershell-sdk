---
id: nerm-submit-users-request
title: SubmitUsersRequest
pagination_label: SubmitUsersRequest
sidebar_label: SubmitUsersRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUsersRequest', 'NERMSubmitUsersRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-users-request
tags: ['SDK', 'Software Development Kit', 'SubmitUsersRequest', 'NERMSubmitUsersRequest']
---


# SubmitUsersRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Users** | [**[]User1**](user1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUsersRequest = Initialize-NERMSubmitUsersRequest  -Users null
```

- Convert the resource to JSON
```powershell
$SubmitUsersRequest | ConvertTo-JSON
```


[[Back to top]](#) 

