---
id: nerm-submit-profile-type200-response
title: SubmitProfileType200Response
pagination_label: SubmitProfileType200Response
sidebar_label: SubmitProfileType200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitProfileType200Response', 'NERMSubmitProfileType200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-profile-type200-response
tags: ['SDK', 'Software Development Kit', 'SubmitProfileType200Response', 'NERMSubmitProfileType200Response']
---


# SubmitProfileType200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileType** | [**ProfileType**](profile-type) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitProfileType200Response = Initialize-NERMSubmitProfileType200Response  -ProfileType null
```

- Convert the resource to JSON
```powershell
$SubmitProfileType200Response | ConvertTo-JSON
```


[[Back to top]](#) 

