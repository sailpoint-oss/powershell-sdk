---
id: nerm-submit-user-manager200-response
title: SubmitUserManager200Response
pagination_label: SubmitUserManager200Response
sidebar_label: SubmitUserManager200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserManager200Response', 'NERMSubmitUserManager200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-manager200-response
tags: ['SDK', 'Software Development Kit', 'SubmitUserManager200Response', 'NERMSubmitUserManager200Response']
---


# SubmitUserManager200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserManager** | [**UserManager**](user-manager) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserManager200Response = Initialize-NERMSubmitUserManager200Response  -UserManager null
```

- Convert the resource to JSON
```powershell
$SubmitUserManager200Response | ConvertTo-JSON
```


[[Back to top]](#) 

