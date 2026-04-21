---
id: nerm-submit-user-profile200-response
title: SubmitUserProfile200Response
pagination_label: SubmitUserProfile200Response
sidebar_label: SubmitUserProfile200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserProfile200Response', 'NERMSubmitUserProfile200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-profile200-response
tags: ['SDK', 'Software Development Kit', 'SubmitUserProfile200Response', 'NERMSubmitUserProfile200Response']
---


# SubmitUserProfile200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserProfile** | [**UserProfile**](user-profile) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserProfile200Response = Initialize-NERMSubmitUserProfile200Response  -UserProfile null
```

- Convert the resource to JSON
```powershell
$SubmitUserProfile200Response | ConvertTo-JSON
```


[[Back to top]](#) 

