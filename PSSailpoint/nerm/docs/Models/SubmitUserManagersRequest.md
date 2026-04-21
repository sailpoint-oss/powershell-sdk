---
id: nerm-submit-user-managers-request
title: SubmitUserManagersRequest
pagination_label: SubmitUserManagersRequest
sidebar_label: SubmitUserManagersRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserManagersRequest', 'NERMSubmitUserManagersRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-managers-request
tags: ['SDK', 'Software Development Kit', 'SubmitUserManagersRequest', 'NERMSubmitUserManagersRequest']
---


# SubmitUserManagersRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserManagers** | [**[]UserManager1**](user-manager1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserManagersRequest = Initialize-NERMSubmitUserManagersRequest  -UserManagers null
```

- Convert the resource to JSON
```powershell
$SubmitUserManagersRequest | ConvertTo-JSON
```


[[Back to top]](#) 

