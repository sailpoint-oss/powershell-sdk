---
id: nerm-submit-profile-upload-request
title: SubmitProfileUploadRequest
pagination_label: SubmitProfileUploadRequest
sidebar_label: SubmitProfileUploadRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitProfileUploadRequest', 'NERMSubmitProfileUploadRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-profile-upload-request
tags: ['SDK', 'Software Development Kit', 'SubmitProfileUploadRequest', 'NERMSubmitProfileUploadRequest']
---


# SubmitProfileUploadRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitProfileUploadRequest = Initialize-NERMSubmitProfileUploadRequest  -File null
```

- Convert the resource to JSON
```powershell
$SubmitProfileUploadRequest | ConvertTo-JSON
```


[[Back to top]](#) 

