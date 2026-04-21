---
id: nerm-patch-language-request
title: PatchLanguageRequest
pagination_label: PatchLanguageRequest
sidebar_label: PatchLanguageRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PatchLanguageRequest', 'NERMPatchLanguageRequest'] 
slug: /tools/sdk/powershell/nerm/models/patch-language-request
tags: ['SDK', 'Software Development Kit', 'PatchLanguageRequest', 'NERMPatchLanguageRequest']
---


# PatchLanguageRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Language** | [**Language**](language) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchLanguageRequest = Initialize-NERMPatchLanguageRequest  -Language null
```

- Convert the resource to JSON
```powershell
$PatchLanguageRequest | ConvertTo-JSON
```


[[Back to top]](#) 

